_= require "underscore"
VueLoaderPlugin= require "vue-loader/lib/plugin"
Autoprefixer= require "autoprefixer"
HtmlWebpackPlugin= require "html-webpack-plugin"

module.exports=
  entry: "./main.coffee"
  module:
    rules: do ->
      babelLoader=
        loader: "babel-loader", options: presets: ["@babel/env"]
      _.values
        js: test: /\.js$/, use: [babelLoader], exclude: /node_modules/
        coffee: test: /\.coffee$/, use: [babelLoader, {loader: "coffee-loader"}]
        vue: test: /\.vue$/, loader: "vue-loader"
        pugForVue: test: /\.pug$/, loader: "pug-plain-loader"
        scss:
          test: /\.s?css$/
          use: [
            {loader: "style-loader"}
            {loader: "css-loader", options: importLoaders: 2}
            {loader: "postcss-loader", options: plugins: [Autoprefixer]}
            {loader: "sass-loader"}
          ]
  plugins: _.values
    vue: new VueLoaderPlugin
    html: new HtmlWebpackPlugin
