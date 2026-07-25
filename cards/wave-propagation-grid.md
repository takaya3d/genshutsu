# 波紋伝播インスタンスグリッド

源:     https://tympanus.net/codrops/2026/07/09/building-an-interactive-wave-propagation-cube-grid-with-three-js/ (2026-07-25発見)
原理:   衝撃点からの距離dを持つ各セルは t = d/c 後に減衰振動を始める(y = A·e^(−λτ)·sin(ωτ), τ = t − t0 − d/c)。
        伝播をシミュレーションせず解析的に書くと不安定ゼロ・巻き戻し可能。radialな時間差がそのまま自然なstaggerになる。
        インスタンス属性=セル中心座標、衝撃はuniform配列(vec4: x,y,t0,amp)で頂点シェーダに渡す。
再実装: sketches/験/wave-propagation-grid.html(クリックで波紋。1,200インスタンス、uniform 16スロット)
モード適性: 静◎ 艶◯ 祭◯(衝撃を音に同期させれば祭にも)
親和タグ: 間 / stagger / 鎮まり(減衰振動がためらいの震えそのもの)
罠:     uniformスロット数はWebGL1互換のためconstループで。減衰λが小さいと波が重なって濁る。
        セルをワールド座標連続にすると波紋がタイル境界で切れずに済む(パターンはworld posで描く)。
