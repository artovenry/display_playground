import Main from "./Main.vue"
import Vue from "vue"

require "./node_modules/bootstrap/dist/css/bootstrap-reboot.min.css"

document.addEventListener "DOMContentLoaded", ->
  document.querySelector("body").appendChild document.createElement("div")
  new Vue el: "div", render: (h)->h(Main)
