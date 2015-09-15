class ContactFormController < ApplicationController
  def create
    # Make sure all params are there
    ['name', 'email', 'message'].each do |key|
      if params[key].blank?
        return render json: { error: 'Unprocessable entity', message: "Please fill in the #{key} field." }, status: 422
      end
    end

    # Send it
    ContactFormMailer.contact_form_email(params).deliver_now

    render json: {}, status: 204
  rescue Exception
    render json: { error: 'An error occured' }, status: 422
  end
end
