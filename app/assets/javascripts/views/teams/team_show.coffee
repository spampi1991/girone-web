window.GironeWeb.view ||= {}

class GironeWeb.view.ShowTeamView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Teams",
      show: () =>
        super

showTeamView = new GironeWeb.view.ShowTeamView
showTeamView.render()