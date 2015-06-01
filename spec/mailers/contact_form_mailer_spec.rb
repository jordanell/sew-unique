require 'spec_helper'

describe ContactFormMailer do
  describe '#contact_form_email' do
    before(:each) do
      @params = {email: 'joe@test.com', name: 'Joe Test', message: 'My message.'}
      @mail = ContactFormMailer.contact_form_email(@params)
    end

    it 'should send the email' do
      @mail.should_not be_nil
    end

    it 'should render the correct subject' do
      @mail.subject.should eql('[Website] Contact Message')
    end

    it 'should render the correct sender' do
      @mail.from.should eql(['sewuniquebybonnie@gmail.com'])
    end

    it 'should render the correct receiver' do
      @mail.to.should eql(['bksewunique@gmail.com'])
    end
  end
end
