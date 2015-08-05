$ ->
  $('[data-disable-with-spinner]').click ->
    enableWith = $(this).html()
    disabled = this
    spinner = $('<div class="spinner-16px animated"></div>')
    spinner.hide()
    $(disabled).html(spinner)
    spinner.fadeIn('fast')
    $(disabled).on 'ajax:complete spinner:hide', -> 
      spinner.fadeOut 'fast', ->
        $(disabled).html(enableWith)