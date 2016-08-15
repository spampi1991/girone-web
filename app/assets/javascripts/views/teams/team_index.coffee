window.GironeWeb.view ||= {}

class GironeWeb.view.TeamIndexView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Teams",
      index: () =>
        super

teamIndexView = new GironeWeb.view.TeamIndexView
teamIndexView.render()