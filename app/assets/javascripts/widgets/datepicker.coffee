
window.GironeWeb.ui ||= {}

class GironeWeb.ui.DatepickerManager

  init: () ->
    $(".date_field").datepicker({
      changeMonth: true,
      changeYear: true,
      yearRange: "1950:2000",
      dateFormat: "dd-mm-yy"
      onClose: (dateText, inst) ->
        $(inst.input).change().focusout()
    })