ready = ->
  # 初期表示はFoodなので画像URLを表示、スライドURLを非表示
  $('#js-image-url').show()
  $('#js-slide-url').hide()

  $('#exhibit_type').on 'change', ->
    $type = $('#exhibit_type').val()
    if $type == 'Food'
      $('#js-image-url').show()
      $('#js-slide-url').hide()
    else
      $('#js-image-url').hide()
      $('#js-slide-url').show()

$(document).ready(ready)
$(document).on 'page:load', ready
