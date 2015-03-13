global.appData = ->
  ENV.APP_STATE

modelData = ENV.APP_STATE ?=
  source: ""
  url: ""

model = require("./model")(modelData)


