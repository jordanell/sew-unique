scrollTo = (elementId) ->
  $('html, body').animate {
      scrollTop: $("##{elementId}").offset().top
  }, 1200


$(document).ready ->
  for link in ['content', 'about', 'gallery', 'contact']
    do (link) ->
      $("##{link}-link").click ->
        scrollTo(link)

  $('#contact-button').click ->
    scrollTo('contact')