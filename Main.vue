<style lang="scss">
  p{margin: 0!important;padding: 0!important;}
  #main>*{flex: 0 1 auto;}
</style>
flex
  container: flex-flow(default: raw nowrap)
  item: grow(default: 0), shrink(default: 1), basis(default: auto)
alignment

<template lang="pug">
  mixin lipsum
    p 円周率（えんしゅうりつ）は、円の周長の、直径に対する比率として定義される数学定数である。通常、ギリシア文字 π[注 1]で表される。数学をはじめ、物理学、工学といった様々な科学分野に出現し、最も重要な数学定数とも言われる。
    p 円周率は無理数であり、その小数展開は循環しない。円周率は、無理数であるのみならず、超越数でもある。
    p 円周率の計算において功績のあったルドルフ・ファン・コーレンに因み、ルドルフ数とも呼ばれる。ルドルフは、小数点以下35桁までを計算した[3]。小数点以下35桁までの値は次の通りである。
  #main(style=`
    margin: 1rem auto;
    width: 480px;
    font-size: 10px;
    display: flex;
  `)
    div(style=`background: #eee;width:170px;`): +lipsum
    div(style=`background: #ddd;width:400px;`) 円周率（えんしゅうりつ）は、円の周長の、直径に対する比率として定義される数学定数である。通常、ギリシア文字 π[注 1]で表される。数学をはじめ、物理学、工学といった様々な科学分野に出現し、最も重要な数学定数とも言われる。
</template>
