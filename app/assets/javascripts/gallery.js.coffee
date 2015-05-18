$(document).ready ->
  $('.gallery-thumbnail img').click (e) ->
    index = e.currentTarget.attributes['data-index'].value
    launchGalleryAt(index);
