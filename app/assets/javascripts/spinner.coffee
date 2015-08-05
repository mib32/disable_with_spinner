$ ->
  $('[data-disable-with-spinner]').click ->
    enableWith = $(this).html()
    $(this).html('<div class="spinner-16px animated"></div>')
    $(this).on 'ajax:complete spinner:hide', ->
      $(this).html(html)