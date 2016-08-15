window.GironeWeb.view ||= {}

class GironeWeb.view.HomePageView extends GironeWeb.view.ApplicationView
  render: ->
    Paloma.controller "Home",
      index: () =>
        super

homePageView = new GironeWeb.view.HomePageView
homePageView.render()
