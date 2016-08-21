# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.GironeWeb.view ||= {}

class GironeWeb.view.PlayerIndexView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Players",
      index: () =>
        super

playerIndexView = new GironeWeb.view.PlayerIndexView
playerIndexView.render()