# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.GironeWeb ||= {}

GironeWeb.init = ->
  initializeWidgets()

initializeWidgets = ->
  $(".ui.dropdown").dropdown()

  $(".date_field").datepicker({
    changeMonth: true,
    changeYear: true,
    yearRange: "1950:2000",
    dateFormat: "dd-mm-yy"
    onClose: (dateText, inst) ->
      $(inst.input).change().focusout()
  })

$(document).on "turbolinks:load", ->
  GironeWeb.init()

