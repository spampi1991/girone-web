# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.GironeWeb.view ||= {}

class GironeWeb.view.TeamIndexView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Teams",
      index: () =>
        super

teamIndexView = new GironeWeb.view.TeamIndexView
teamIndexView.render()