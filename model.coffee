Model = require "model"

module.exports = (I={}, self=Model(I)) ->
  self.attrObservable "source", "url"

  self.extend
    save: ->
      $.ajax
        url: "http://api.hyperweb.space/hooks/create"
        headers:
          "Content-Type": "text/plain"
        method: "POST"
        data: @source()
        processData: false

  self
