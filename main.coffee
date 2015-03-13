global.appData = ->
  ENV.APP_STATE

modelData = ENV.APP_STATE ?=
  source: ""
  url: ""

model = require("./model")(modelData)

style = document.createElement "style"
style.textContent = require("./style")
document.head.appendChild style

document.body.appendChild require("./template")(model)
