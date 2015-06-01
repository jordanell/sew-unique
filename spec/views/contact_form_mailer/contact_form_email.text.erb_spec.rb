require 'spec_helper'

describe 'contact_form_mailer/contact_form_email.text.erb' do

  context 'when instance variable are present' do
    before(:each) do
      @name = 'Joe'
      @email = 'joe@test.com'
      @message = 'Test message.'
    end

    it 'should render' do
      assign(:name, @name)
      assign(:email, @email)
      assign(:message, @message)

      render
    end
  end
end