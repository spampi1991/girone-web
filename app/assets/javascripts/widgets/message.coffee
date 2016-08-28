
window.GironeWeb.ui ||= {}

class GironeWeb.ui.MessageManager

  init: () ->
    $('.message .close').on 'click', ->
      $(this)
        .closest('.message')
        .transition('fade')