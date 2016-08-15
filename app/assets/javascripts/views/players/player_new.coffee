# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.GironeWeb.view ||= {}

class GironeWeb.view.NewPlayerView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Players",
      new: () =>
        super
        @initializeDatepicker()

newPlayerView = new GironeWeb.view.NewPlayerView
newPlayerView.render()
