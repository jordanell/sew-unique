$(document).ready ->
  for link in ['content', 'about', 'contact']
    do (link) ->
      $("##{link}-link").click ->
        $('html, body').animate {
            scrollTop: $("##{link}").offset().top
        }, 1200