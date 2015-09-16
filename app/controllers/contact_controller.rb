class ContactController < ApplicationController
  include AnalyticsHelper

  def create
    # Make sure all params are there
    ['name', 'email', 'message'].each do |key|
      if params[key].blank?
        return render json: { error: 'Unprocessable entity', message: "Please fill in the #{key} field." }, status: 422
      end
    end

    # Send it
    ContactMailer.contact_email(params).deliver_now
    send_event('Contact', 'Create')

    render json: {}, status: 204
  rescue Exception
    render json: { error: 'An error occured' }, status: 422
  end
end
