class ContactFormMailer < ActionMailer::Base
  include ApplicationHelper

  def contact_form_email(params)
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]

    mail(to: 'bonnie@email.com',
         subject: "[Website] Contact Message",
         from: 'sewuniquebybonnie@gmail.com')
  end
end
