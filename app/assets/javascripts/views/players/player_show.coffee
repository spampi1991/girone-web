window.GironeWeb.view ||= {}

class GironeWeb.view.ShowPlayerView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Players",
      show: () =>
        super

showPlayerView = new GironeWeb.view.ShowPlayerView
showPlayerView.render()