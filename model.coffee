Model = require "model"

module.exports = (I={}, self=Model(I)) ->
  self.attrObservable "source", "url"
  
  url = "http://api.hyperweb.space/hooks/create"
  # url = "http://localhost:5000/hooks/create"

  self.extend
    save: ->
      $.ajax
        url: url
        headers:
          "Content-Type": "text/plain"
        method: "POST"
        data: @source()
        processData: false
      .then (result) ->
        self.url "http://api.hyperweb.space/h/#{result}"
        console.log result

  self
