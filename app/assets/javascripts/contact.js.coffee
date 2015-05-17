emailSuccess = ->
  resetEmailButton()

  # Reset the form
  $('#email-name').val('')
  $('#email-email').val('')
  $('#email-message').val('')

emailFailure = ->
  resetEmailButton()

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
      url: '/contact_form'
      type: 'post'
      data: formParams
      success: emailSuccess
      error: emailFailure
    })