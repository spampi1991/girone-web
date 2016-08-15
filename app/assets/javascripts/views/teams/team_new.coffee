window.GironeWeb.view ||= {}

class GironeWeb.view.NewTeamView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Teams",
      new: () =>
        super

newTeamView = new GironeWeb.view.NewTeamView
newTeamView.render()