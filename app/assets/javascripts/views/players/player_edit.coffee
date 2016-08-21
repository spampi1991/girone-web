# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.GironeWeb.view ||= {}

class GironeWeb.view.EditPlayerView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Players",
      edit: () =>
        super
        @initializeDatepicker()
      # Handle incorrect form submissions which trigger template rendering  without url change
      update: () =>
        super
        @initializeDatepicker()

editPlayerView = new GironeWeb.view.EditPlayerView
editPlayerView.render()