require 'spec_helper'

describe RootController do
  describe '#index' do
    it 'should render the index template' do
      get :index

      response.should render_template('index')
    end

    it 'should set the galleries instance variable' do
      @gallery1 = FactoryGirl.create(:gallery)
      @gallery2 = FactoryGirl.create(:gallery, visible: false)

      get :index

      expect(assigns(:galleries)).to eq([@gallery1])
    end
  end
end
