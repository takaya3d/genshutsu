# 現出工場 — genshutsu

Claude Codeが0→1でWebGLスケッチを量産し、貴優が1→10に仕上げる工場。
ギャラリー: https://takaya3d.github.io/genshutsu/

## 敷地の地図

| 場所 | 何が溜まるか |
|---|---|
| `CLAUDE.md` | 憲法。工場の全ルール |
| `AESTHETICS.md` | 美学の掟。**赤入れはここに追記** |
| `RESEARCH.md` | 自律学習プロトコル(工場の学び方のルール) |
| `INBOX.md` | 受信箱。**気になったURLはここに貼る** |
| `ledger.md` | 台帳。水揚げの記録。レビューしたら行末に `[済]` |
| `index.html` | ギャラリー(GitHub Pagesの入口) |
| `run_factory.sh` | 常時稼働ランナー |
| `orders/` | 発注書(`ORDER-*.md`)。特注案件の指示書置き場 |
| `sketches/` | 水揚げ。日々の単一HTMLスケッチ+発注案件のサブフォルダ |
| `sketches/験/` | 技法カードの最小再実装(習作) |
| `cards/` | 技法カード。学んだ技法が1枚ずつ溜まる |
| `research/` | リサーチ成果。暦×トレンドマップなど |
| `reports/` | 週報。工場の頭の中の要約 |
| `textures/brush/` | 筆スキャンの差し替え口 |
| `tools/blender/` | Blender側スクリプト(GPストローク→JSON等) |
| `factory.log` | 工場ログ(gitには入らない) |

## 運転

```sh
./run_factory.sh          # 火入れ
tail -f factory.log       # 監視
touch STOP                # 次の周で穏やかに停止
```

## 毎朝の儀式

1. 水揚げを見る
2. ledger.md の見た行に `[済]` を付ける(これで工場がまた作り出す)
3. 1本だけ選ぶ → 貴優ノブで間を彫る → その日の1本として公開
4. ズレた癖を見つけたら AESTHETICS.md の「赤入れ」に一行追記
