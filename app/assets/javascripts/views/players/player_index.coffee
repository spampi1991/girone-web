window.GironeWeb.view ||= {}

class GironeWeb.view.PlayerIndexView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Players",
      index: () =>
        super

playerIndexView = new GironeWeb.view.PlayerIndexView
playerIndexView.render()