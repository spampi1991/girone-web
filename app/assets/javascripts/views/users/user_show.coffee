# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.GironeWeb.view ||= {}

class GironeWeb.view.ShowUserView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Users",
      show: () =>
        super

showUserView = new GironeWeb.view.ShowUserView
showUserView.render()