# 暦×トレンドマップ — 夏(2026)

調査日: 2026-07-25(大暑・初候「桐始結花」)。3方面(Codrops/awwwards圏、three.js/WebGPU圏、Shadertoy/CodePen・作家圏)の偵察結果を、夏の二十四節気と七十二候に紐づけたもの。工場はスケッチ立案時にこのマップの「±15日の季節感」内の候を引くこと。

---

## 2026年の潮流(マクロ)

1. **WebGPU + TSL が本番標準に。** three.js r185、TSLが公式シェーダ層。WGSL/GLSL両対応で書け、WebGL2へ自動フォールバック。iOS 26からSafariもWebGPU標準有効(ただし旧iOSは非対応 → **モバイル必須の掟があるのでTSL二刀流かWebGL系を基本とし、compute専用技法は劣化パス必須**)。
   - https://github.com/mrdoob/three.js/releases/tag/r185
   - https://blog.maximeheckel.com/posts/field-guide-to-tsl-and-webgpu/
   - https://caniuse.com/webgpu
2. **抑制の美・「一発の強いアイデア」。** 受賞作は効果の重ね掛けでなく、一つの硬いアイデアを綺麗に実行する。軽量トリック(テクスチャ参照の疑似霧、閾値テクスチャreveal)がブルートフォースに勝つ。**うちの美学の掟と完全に同じ方向。時流はこちらに吹いている。**
   - https://tympanus.net/codrops/2026/07/10/the-sleepers-creating-an-atmospheric-webgl-experience-with-lightweight-techniques/
   - https://www.utsubo.com/blog/best-threejs-websites-2026
3. **NPR(水彩・スケッチ・手描き線)の波。** フォトリアルPBRからの揺り戻し。水彩シェーディング、モデル無しのスケッチ風3D、ハーフトーン/ディザ。**deeppaint発注(筆致ジオメトリ)はこの波の先端に立てる。**
   - https://tympanus.net/codrops/2026/04/24/susurrus-crafting-a-cozy-watercolor-world-with-three-js-and-shaders/
   - https://tympanus.net/codrops/2026/06/11/sketching-the-impossible-a-3d-portfolio-built-without-a-single-3d-model/
   - https://blog.maximeheckel.com/posts/shades-of-halftone/
4. **粒子は物理からエージェント(生態)へ。** 引力・斥力・エネルギーの行動則で「生きている」群れを作る。物理イージングが作為的イーズ曲線を置き換える。
   - https://tympanus.net/codrops/2025/12/10/simulating-life-in-the-browser-creating-a-living-particle-system-for-the-untillabs-website/
5. **流体(MLS-MPM/SPH)とGaussian Splattingが主戦場。** ブラウザ実時間流体が成熟。SplattingはSpark(MIT、WebGL2でモバイル可)が本命。
   - https://github.com/matsuoka-601/WebGPU-Ocean (MIT)
   - https://github.com/sparkjsdev/spark (MIT)
   - https://tympanus.net/codrops/2025/02/26/webgpu-fluid-simulations-high-performance-real-time-rendering/

---

## 暦マップ(夏)

書式: 候(目安日付)/ 情景 → モチーフ案 → 技法候補(発想元)。
「触れると、鎮まる」の文法に合う仕込みを◆で付記。

### 立夏(5/5–5/20)— 夏、立つ

- **蛙始鳴**(5/5–5/9)蛙が鳴き始める
  - モチーフ: 雨蛙の合唱、田の夜
  - 技法: **シェーダ音響合成**(視覚と音が同一クロック — 0b5vr https://github.com/0b5vr/0mix MIT)+ エージェント粒子の**明滅同期**
  - ◆触れると合唱が一斉に止み、間をおいて一匹から再開する
- **蚯蚓出**(5/10–5/14)蚯蚓が地に出る
  - モチーフ: 土中の蠢き、畝
  - 技法: **手続き的曲線ストローク**(force-based steering + parallel transport frames — https://tympanus.net/codrops/2026/02/10/building-an-endless-procedural-snake-with-three-js-and-webgl/)
- **竹笋生**(5/15–5/20)筍が生える
  - モチーフ: 竹林、木漏れ日
  - 技法: インスタンシング竹林 + **ポスト処理ボリューメトリック光芒**(https://blog.maximeheckel.com/posts/shaping-light-volumetric-lighting-with-post-processing-and-raymarching/)

### 小満(5/21–6/5)— 万物満ちゆく

- **蚕起食桑**(5/21–5/25)蚕が桑を食む
  - モチーフ: 絹糸、繭
  - 技法: **リボン/ストローク描画**(meshline https://github.com/pmndrs/meshline MIT)。糸が空間に紡がれていくreveal
  - ◆deeppaintのStrokeRibbonの習作を兼ねられる
- **紅花栄**(5/26–5/30)紅花咲く
  - モチーフ: 紅花畑、緋
  - 技法: VATによる開花群(False Earth系)。色は緋一色の抑制で
- **麦秋至**(5/31–6/5)麦、秋(実り)に至る
  - モチーフ: 麦の穂波
  - 技法: **compute百万本インスタンシング草原**(GPU台数削減+間接描画 — https://tympanus.net/codrops/2026/04/21/false-earth-from-webgl-limits-to-a-webgpu-driven-world/)。二重周波数の風
  - ◆触れた場所だけ風が凪ぐ

### 芒種(6/6–6/20)— 種を蒔く

- **蟷螂生**(6/6–6/10)蟷螂生まれる
  - モチーフ: 孵化、小さきものの散開
  - 技法: エージェント粒子の孵化→散開(staggerに分布カーブ)
- **腐草為蛍**(6/11–6/15)腐草、蛍と為る
  - モチーフ: **蛍**(最強の持ち駒)
  - 技法: **行動則エージェント粒子**(UntilLabs系)+ 選択的ブルーム + **明滅の位相同期**(蛍の実挙動)
  - ◆掌の近くに集まり、明滅が呼吸に同期していることに遅れて気づく
- **梅子黄**(6/16–6/20)梅の実黄ばむ
  - モチーフ: 梅雨、雨の軒先
  - 技法: **疑似霧**(ドメインワープしたノイズテクスチャ参照、ボリューメトリクス不使用 — The Sleepers)+ 水彩NPR滲み

### 夏至(6/21–7/6)— 光の頂点

- **乃東枯**(6/21–6/26)夏枯草、枯れる(万物が茂る中で独り枯れる)
  - モチーフ: 逆行するもの、静かな例外
  - 技法: **逆再生reveal**(閾値テクスチャの白黒反転 — The Sleepers式)。全体が茂る中、一株だけ還っていく
- **菖蒲華**(6/27–7/1)菖蒲咲く
  - モチーフ: 花菖蒲、水辺
  - 技法: 水彩NPRシェーディング(Susurrus)。藍と生成り
- **半夏生**(7/2–7/6)半夏生ず
  - モチーフ: 半夏雨、田に降る雨
  - 技法: スクリーンスペース流体表面(深度平滑化 — matsuoka-601系)

### 小暑(7/7–7/22)— 暑さの入り口

- **温風至**(7/7–7/11)温風至る
  - モチーフ: 熱風、風の可視化
  - 技法: カールノイズ風場 + 粒子。風だけを描く
- **蓮始開**(7/12–7/16)蓮の花開く
  - モチーフ: 蓮池の夜明け
  - 技法: 開花のreveal振り付け(「ため」→ふっと開く)。大気散乱の朝色(https://blog.maximeheckel.com/posts/on-rendering-the-sky-sunsets-and-planets/)
- **鷹乃学習**(7/17–7/22)鷹の子、飛ぶことを学ぶ
  - モチーフ: 飛翔の練習、ためらいの軌道
  - 技法: boids + parallel transport軌道。**ためらいのイージング**そのものを主役に

### 大暑(7/23–8/6)— 暑さの頂点 ★いまここ

- **桐始結花**(7/23–7/27)桐、花(実)を結ぶ ★調査日はここ
  - モチーフ: 蚊遣りの煙、線香、夏の夕の静けさ
  - 技法: **球体に封じた単パスボリューメトリック煙**(Chill Smoke Orb原理 — 密度場のemission/absorption積算。原理のみ、コード複写禁止: https://www.shadertoy.com/view/tflBDM)
  - ◆触れると煙が乱れ、やがて元の一筋に鎮まる
- **土潤溽暑**(7/28–8/1)土潤いて溽し暑し
  - モチーフ: **打ち水**、蒸気、石畳
  - 技法: MLS-MPM流体(WebGPU、劣化パス必須)or **波紋伝播インスタンスグリッド**(WebGLで軽量 — https://tympanus.net/codrops/2026/07/09/building-an-interactive-wave-propagation-cube-grid-with-three-js/)
  - ◆撒いた水が広がり、地面の色が静かに沈む。radialな時間差が自然なstaggerになる
- **大雨時行**(8/2–8/6)大雨、時々に行る
  - モチーフ: **夕立の一部始終**(積乱雲→驟雨→雨上がりの夕焼け)
  - 技法: スクロール=タイムライン演出(ZERO系の単一仮想スクロール)+ Rayleigh/Mie大気散乱の雨上がりの空
  - ◆嵐で終わらせない。必ず「雨上がり」まで描く — 憲法の再生・鎮静の掟そのもの

### 次の一手: 立秋(8/7–8/22)先読み

- 涼風至(8/7–8/11)/ **寒蝉鳴**(8/12–8/16)ひぐらし鳴く / 蒙霧升降(8/17–8/22)深い霧
- ひぐらし=シェーダ音響合成の本命。蒙霧=疑似霧技法の本命。お盆(送り火 8/16)= **MSDF溶解+浸食エッジからの粒子放出**(溶解閾値と粒子発生を同一ノイズ場で駆動 — https://tympanus.net/codrops/2026/01/28/webgpu-gommage-effect-dissolving-msdf-text-into-dust-and-petals-with-three-js-tsl/)

---

## 運用上の注意

- **モバイル制約:** WebGPU必須技法(MLS-MPM流体、compute百万インスタンス)は旧iOS(≤18)で全滅。単一HTMLスケッチはWebGL系かTSL二刀流を基本に。重装備はorders案件でのみ。
- **ライセンス:** Shadertoyは既定CC BY-NC-SA — **原理のみ、コード複写禁止**(RESEARCH.md §4)。GitHubはMIT確認済みのみ上に明記。無記載リポジトリはコード読むだけ。
- **カード化の掟:** ここに載った技法も、`cards/` にカード化(験モードで最小再実装)するまで本番スケッチでは使わない。

## 未婚の組み合わせ(自己発注の種)

1. 封じた煙オーブ × シェーダ音響(蚊遣り豚が蚊遣りの音階を持つ)
2. 波紋伝播グリッド × 打ち水 × 夕方の大気散乱(触れるたび地面が涼しい色に沈む)
3. 蛍エージェント × 明滅位相同期 × 呼吸(マイク無しでも「画面を長押し=息を止める」で同期)
4. 閾値テクスチャreveal × 筆致ストローク(deeppaintのrevealをスケッチ規模で先行検証)
5. ためらいboids × 寒蝉の声(飛べない鷹の子とひぐらしの夕)
