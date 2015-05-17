class ContactFormController < ApplicationController
  def create
    ContactFormMailer.contact_form_email(params).deliver
    render json: {success: true}, status: 200
  rescue Exception
    render json: {success: false}, status: 422
  end
end
