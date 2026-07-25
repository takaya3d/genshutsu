#!/usr/bin/env bash
# ============================================================
# 現出工場ランナー — run_factory.sh
# 常時稼働ループ。CLAUDE.md(憲法)と同じディレクトリで走らせる。
#   使い方:  chmod +x run_factory.sh && ./run_factory.sh
#   停止:    Ctrl+C か、touch STOP(ファイルを置くと次の周で静かに止まる)
# 前提: claude(Claude Code CLI)がインストール・ログイン済み。
#       gitリポジトリ初期化済み。sketches/ に成果物が溜まる。
# ============================================================

set -u
cd "$(dirname "$0")"

# ---- 貴優ノブ(工場の調律) ------------------------------
MAX_UNREVIEWED=12      # 未レビューがこの本数溜まったら生産を待機(引き取り駆動)
SLEEP_BETWEEN=900      # 1本ごとの休憩(秒)。API枠の呼吸。900=15分
SLEEP_WHEN_FULL=3600   # 満杯時の待機(秒)
MODEL="sonnet"         # 0→1の霧はsonnetで十分。憲法の解釈が甘ければopusに
LOG="factory.log"
# ---------------------------------------------------------

echo "[$(date '+%F %T')] 工場、火入れ。" | tee -a "$LOG"

while true; do
  # 停止ファイルで穏やかに終業
  if [ -f STOP ]; then
    echo "[$(date '+%F %T')] STOPを検知。今日の工場を閉めます。" | tee -a "$LOG"
    rm -f STOP
    exit 0
  fi

  # 引き取り駆動: 未レビュー数を台帳から数える(行末に [済] が無いものが未レビュー)
  UNREVIEWED=$(grep -c '^\- ' ledger.md 2>/dev/null || echo 0)
  REVIEWED=$(grep -c '\[済\]' ledger.md 2>/dev/null || echo 0)
  PENDING=$(( UNREVIEWED - REVIEWED ))

  if [ "$PENDING" -ge "$MAX_UNREVIEWED" ]; then
    echo "[$(date '+%F %T')] 未レビュー ${PENDING} 本。生産待機、リサーチのみ行う。" | tee -a "$LOG"
    claude -p --model "$MODEL" --dangerously-skip-permissions \
      "生産はするな。憲法(CLAUDE.md)を読み、Web上の新しいWebGL/Three.js技法を1つ調査し、ledger.md の『未使用技法メモ』欄に発想元URLと一行解説を追記だけせよ。コミットせよ。" \
      >> "$LOG" 2>&1
    sleep "$SLEEP_WHEN_FULL"
    continue
  fi

  # 本番: 憲法に従って1本現出させる
  echo "[$(date '+%F %T')] 現出開始(未レビュー ${PENDING} 本)。" | tee -a "$LOG"
  claude -p --model "$MODEL" --dangerously-skip-permissions \
    "憲法(CLAUDE.md)を読み、掟のすべてに従って、今日の節気に合うスケッチを1本 sketches/ に現出させよ。台帳照合・自己検証・貴優ノブ・ledger.md追記・index.html更新・コミットまで一人で完遂せよ。" \
    >> "$LOG" 2>&1

  RC=$?
  if [ $RC -ne 0 ]; then
    echo "[$(date '+%F %T')] 異常終了(code=$RC)。30分置いて再開。" | tee -a "$LOG"
    sleep 1800
    continue
  fi

  git push origin main >> "$LOG" 2>&1 || echo "[$(date '+%F %T')] push失敗(後で手動で)。" | tee -a "$LOG"

  echo "[$(date '+%F %T')] 1本納品。次まで ${SLEEP_BETWEEN} 秒の間(ま)。" | tee -a "$LOG"
  sleep "$SLEEP_BETWEEN"
done
