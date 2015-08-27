switchUrl = ->
  $type = $('#exhibit_type').val()
  if $type == 'Food'
    $('#js-image-url').show()
    $('#js-slide-url').hide()
  else
    $('#js-image-url').hide()
    $('#js-slide-url').show()

ready = ->
  switchUrl()

  $('#exhibit_type').on 'change', ->
    switchUrl()

$(document).ready(ready)
$(document).on 'page:load', ready
