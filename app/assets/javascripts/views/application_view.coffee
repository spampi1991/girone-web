window.GironeWeb.view ||= {}

class GironeWeb.view.ApplicationView
  render: ->
    this.initializeDropdowns()
  cleanup: ->
    # unimplemented
  initializeDropdowns: ->
    dropdownManager = new GironeWeb.ui.DropdownManager
    dropdownManager.init()
  initializeDatepicker: ->
    datepickerManager = new GironeWeb.ui.DatepickerManager
    datepickerManager.init()