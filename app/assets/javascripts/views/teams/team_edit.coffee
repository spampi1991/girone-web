# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.GironeWeb.view ||= {}

class GironeWeb.view.EditTeamView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Teams",
      edit: () =>
        super
      create: () =>
        super

editTeamView = new GironeWeb.view.EditTeamView
editTeamView.render()