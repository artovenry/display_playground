<style lang="scss">
  p{margin: 0!important;padding: 0!important;}
  #main>*{flex: 0 1 auto;}
</style>
flex
  container: flex-flow(default: raw nowrap)
  item: grow(default: 0), shrink(default: 1), basis(default: auto)
alignment
  justify-content: flex-start(default) flex-end center space-around space-between space-evenly
  align-items(align-self):stretch(default) flex-start flex-end center baseline
    =>クロス軸方向のmarginの制約が優先される
  align-content: stretch(default) flex-start(default) flex-end center space-around space-between space-evenly

<template lang="pug">
  mixin lipsum
    p 円周率（えんしゅうりつ）は、円の周長の、直径に対する比率として定義される数学定数である。通常、ギリシア文字 π[注 1]で表される。数学をはじめ、物理学、工学といった様々な科学分野に出現し、最も重要な数学定数とも言われる。
    p 円周率は無理数であり、その小数展開は循環しない。円周率は、無理数であるのみならず、超越数でもある。
    p 円周率の計算において功績のあったルドルフ・ファン・コーレンに因み、ルドルフ数とも呼ばれる。ルドルフは、小数点以下35桁までを計算した[3]。小数点以下35桁までの値は次の通りである。
  #main(style=`
    margin: 1rem auto;
    width: 480px;
    height: 480px;
    font-size: 10px;
    display: flex;
    flex-flow: column wrap;
    justify-content: space-evenly;
    align-items: baseline;
  `)
    div(style=`background: #eee;`) 円周
    div(style=`background: #eee;`) 円周率（えんしゅんしゅんしゅんしゅ
    div(style=`background: #eee;height: 5em`) qwertyuiiAAA
    div(style=`background: #eee;align-self:center;`) 円周率（えんしゅんしゅ
    div(style=`background: #eee;height: 400px;`) 円周率（えんしゅ
    //- div(style=`background: #eee;flex:1 1 181px;`): +lipsum
    div(style=`background: #ddd; width: 200px`) 円周率（えんしゅうりつ）は、円の周長の、直径に対する比率として定義される数学定数である。通常、ギリシア文字 π[注 1]で表される。数学をはじめ、物理学、工学といった様々な科学分野に出現し、最も重要な数学定数とも言われる。
</template>
