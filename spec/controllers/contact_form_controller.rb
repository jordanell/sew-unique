require 'spec_helper'

describe ContactFormController do
  describe '#create' do
    before(:each) do
      @params = {email: 'joe@test.com', name: 'Joe Test', message: 'My message.'}
    end

    it 'should fail with no email' do
      @params[:email] = nil

      post :create, @params

      response.status.should eq(422)
      json_response.message.should eq('Please fill in the email field.')
    end

    it 'should fail with no name' do
      @params[:name] = nil

      post :create, @params

      response.status.should eq(422)
      json_response.message.should eq('Please fill in the name field.')
    end

    it 'should fail with no message' do
      @params[:message] = nil

      post :create, @params

      response.status.should eq(422)
      json_response.message.should eq('Please fill in the message field.')
    end

    it 'should send the email' do
      post :create, @params

      response.status.should eq(200)
    end
  end
end
