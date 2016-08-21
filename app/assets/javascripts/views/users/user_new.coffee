# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.GironeWeb.view ||= {}

class GironeWeb.view.NewUserView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Users",
      new: () =>
        super
      # Handle incorrect form submissions which trigger template rendering  without url change
      create: () =>
        super

newUserView = new GironeWeb.view.NewUserView
newUserView.render()