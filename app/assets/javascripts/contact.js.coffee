emailSuccess = ->
  resetEmailButton()

  # Reset the form
  $('#email-name').val('')
  $('#email-email').val('')
  $('#email-message').val('')

  showFlash $('#flash-success')

emailFailure = (data) ->
  resetEmailButton()
  showFlash $('#flash-error'), data.responseJSON.message

showFlash = ($element, message = null) ->
  # Clear old flashes
  $('#flash-success, #flash-error').css('display', 'none')
  $('#flash-error').text('An error occured! Please phone us for further support.')

  if message
    $element.text(message)

  $element.slideDown ->
    setTimeout ->
      $element.slideUp();
    , 7000

resetEmailButton = ->
  $emailSend = $('#email-send')

  $emailSend.removeAttr('disabled')
  $emailSend.html("<i class='fa fa-envelope'></i>Send")

$(document).ready ->
  $('#email-send').click ->
    $emailSend = $('#email-send')

    $emailSend.attr('disabled', 'disabled')
    $emailSend.html('Please wait...')

    formParams = {
      name: $('#email-name').val()
      email: $('#email-email').val()
      message: $('#email-message').val()
    }

    $.ajax({
      url: '/contact'
      type: 'post'
      data: formParams
      success: emailSuccess
      error: emailFailure
    })