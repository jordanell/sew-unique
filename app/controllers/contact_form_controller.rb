class ContactFormController < ApplicationController
  def create
    # Make sure all params are there
    ['name', 'email', 'message'].each do |key|
      if params[key].blank?
        return render json: { success: false, message: "Please fill in the #{key} field." }, status: 422
      end
    end

    # Send it
    ContactFormMailer.contact_form_email(params).deliver_now

    render json: { success: true }, status: 200
  rescue Exception
    render json: { success: false }, status: 422
  end
end
