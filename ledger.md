# 現出台帳

## 水揚げ

<!--
工場が1本ごとにここへ追記する。1行1本、必ず行頭「- 」で始めること。
書式: - YYYY-MM-DD | モチーフ | 技法 | 発想元URL | 自己評価(動作・美学) | 貴優への一言(気づきの仕込み場所)
貴優がレビューしたら行末に済マークを付ける(角括弧+済)。
-->

- 2026-07-26 | 金魚(大暑 縁日の水) | 行動則エージェント(徘徊・分離・壁回避・休止・恐れと信頼)+疑似コースティクス水面(エージェント系) | 発想: https://tympanus.net/2025/12/10/simulating-life-in-the-browser-creating-a-living-particle-system-for-the-untillabs-website/ 原理のみ、カード=cards/agent-behavior-particles.md | 動作: Playwright両画面・JSエラー0(ソフトレンダで軽) / 美学: 影の矩形露出とコースティクスの泡を2巡で修正 | 気づき: 指を速く動かすと散り、**動かさず待つと寄ってくる**(信頼は静けさに宿る)。ときどき立ち止まる個体がいる(生き物の間)。触れた水音は音階。隠喩は「静かにしていると、そばに来てくれる」
- 2026-07-26 | 線香花火(大暑 夏の夜) | 分岐パーティクル+相図(蕾→牡丹→松葉→柳→散り菊→落花)+残像法+線分描画(パーティクル系) | 発想: 実物の観察+行動則粒子の「寿命内イベント」概念のみ、カード=cards/branching-spark-particles.md | 動作: Playwright両画面61fps・JSエラー0 / 美学: 点→点線→針の線分と3巡して松葉の針を出した | 気づき: 手をかざして守ると火は長く生きる(shelterで寿命1.8倍)。落ちる瞬間、音が一拍止まる。喪の間のあと、次の一本がひとりでに灯る(破壊で終わらない)。隠喩は「守られた火は、すこし長く生きる」——一生の縮図
- 2026-07-26 | 風鈴(大暑 初候 桐始結花) | 駆動減衰振り子×2連成(鈴と短冊)+非整数次倍音モーダル合成(物理系×音響系) | 発想: 憲法の指示+物理モデリング音響の一般原理、カード=cards/modal-synthesis-bell.md | 動作: Playwrightタッチ/スクロール/2画面・JSエラー0・実質60fps帯 / 美学: ガラスの丸みと緋の刷毛を2巡調整、縦画面は三鈴目の紐を伸ばし札を避けた | 気づき: 三鈴がD6/E6/G6の和音に調律されている。鈴を手で包むと鳴りやむ(触れると鎮まる)。静けさが続くと見えない風がひとつだけ鳴らして通る。隠喩は「音は、通り過ぎた風の名残」
- 2026-07-26 | 夕立(大暑 末候 大雨時行) | Rayleigh/Mie単一散乱近似の空+fbmドメインワープ乱雲+スクリーン空間雨脚(シェーダ大気系) | 発想: https://blog.maximeheckel.com/posts/on-rendering-the-sky-sunsets-and-planets/ 原理のみ、カード=cards/rayleigh-mie-sky.md | 動作: Playwright嵐/雨上がり両状態・タッチ/スクロール・JSエラー0 / 美学: 嵐の錆汚れと焦げ茶の空を2巡で修正、金と藍の対比に | 気づき: 泣き止んだ空にだけ、一度だけ虹が架かる。雨上がりの雫は五音音階。撫でてなだめても、放っておいても、空はいつか泣き止む。隠喩は「泣きたいだけ泣けば、空は金色になる」——晴れた空を長押しすると、空はまた泣ける
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
