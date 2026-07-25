# 現出台帳

## 水揚げ

<!--
工場が1本ごとにここへ追記する。1行1本、必ず行頭「- 」で始めること。
書式: - YYYY-MM-DD | モチーフ | 技法 | 発想元URL | 自己評価(動作・美学) | 貴優への一言(気づきの仕込み場所)
貴優がレビューしたら行末に済マークを付ける(角括弧+済)。
-->

- 2026-07-26 | 打水(大暑 次候 土潤溽暑) | 波紋伝播インスタンスグリッド(解析的遅延減衰振動、ピクセル単位の濡れ場、乱張り石畳) | 発想: https://tympanus.net/codrops/2026/07/09/building-an-interactive-wave-propagation-cube-grid-with-three-js/ 原理のみ、カード=cards/wave-propagation-grid.md | 動作: Playwrightタッチ/スクロール/2画面・JSエラー0(ソフトレンダfps低めだが実GPUでは軽量な24回ループ) / 美学: 3状態スクショ4巡改稿 | 気づきは三層: (1)濡れた石にだけ青海波が浮かぶ=石畳の下に海が眠っている (2)水音が実は五音音階 (3)放っておくと見えない誰かも打ち水をしに来る。隠喩は「客を迎える前の仕草」——乾けばまた撒けばいい
- 2026-07-25 | 蚊遣(大暑 初候 桐始結花) | 和紙シェーダ+墨リボン(解析的トラベリングウェーブ煙、ガウス風場、燃焼進行する渦巻) | 発想: 単パスvolumetricの調査から転換、和風Webデザイン(余白・縦書き・落款・伝統色)を参照 https://www.shadertoy.com/view/tflBDM | 動作: Playwrightでタッチ/スクロール/2画面サイズ検証・JSエラー0・モバイル71fps / 美学: スクショ3状態(無風・乱れ・鎮まり)を審美確認 | 気づきは三層: (1)煙の揺れが火の明滅と同じ呼吸 (2)線香が本当に燃え進み灰の跡が残る=戻らない時間 (3)撫でた息の音が実は音階。隠喩は「夕暮れの縁側で誰かの帰りを待つ時間」——乱しても一筋に還るのが待つ心、燃え尽きたら火はふっと消え灰の渦だけが静かに残る

## 未使用技法メモ

<!-- 生産待機中のリサーチはここへ。発想元URLと一行解説。行頭は「* 」で始めること(水揚げと区別するため「- 」は使わない)。 -->

* 2026-07-25 封じた煙の単パスボリューメトリック(密度場のemission/absorption積算) — 蚊遣り・線香向け。原理のみ、複写禁止 https://www.shadertoy.com/view/tflBDM → 詳細 research/koyomi-natsu-2026.md
* 2026-07-25 波紋伝播インスタンスグリッド(radial時間差=自然なstagger) — 打ち水向け、WebGLで軽量 https://tympanus.net/codrops/2026/07/09/building-an-interactive-wave-propagation-cube-grid-with-three-js/
* 2026-07-25 行動則エージェント粒子(物理でなく生態。引力/斥力/エネルギー) — 蛍・蛙の合唱向け https://tympanus.net/codrops/2025/12/10/simulating-life-in-the-browser-creating-a-living-particle-system-for-the-untillabs-website/
* 2026-07-25 閾値テクスチャreveal+ドメインワープ疑似霧(軽量トリック系の代表) — 蜃気楼・蒙霧・墨reveal向け https://tympanus.net/codrops/2026/07/10/the-sleepers-creating-an-atmospheric-webgl-experience-with-lightweight-techniques/
* 2026-07-25 MSDF溶解+浸食エッジからの粒子放出(溶解と発生を同一ノイズ場で) — 送り火・お盆向け https://tympanus.net/codrops/2026/01/28/webgpu-gommage-effect-dissolving-msdf-text-into-dust-and-petals-with-three-js-tsl/
* 2026-07-25 Rayleigh/Mie大気散乱(夕立後の空・蓮の夜明け向け) https://blog.maximeheckel.com/posts/on-rendering-the-sky-sunsets-and-planets/
* 2026-07-25 シェーダ音響合成(視覚と音が同一クロック、0b5vr 0mix MIT) — 蛙・ひぐらし・祭囃子向け https://github.com/0b5vr/0mix

### 注視リスト(2026-07-25初期化)

WebGPU compute / TSL(r185で公式シェーダ層) / MLS-MPM流体 / gaussian splatting(Spark, MIT, WebGL2でモバイル可) / エージェント粒子 / 水彩・スケッチNPR / ハーフトーン・ディザ / line-stroke描画 / スクロール=タイムライン演出。制約: WebGPUはiOS26+のみ → 単一HTMLスケッチはWebGL系かTSL二刀流を基本とする。
