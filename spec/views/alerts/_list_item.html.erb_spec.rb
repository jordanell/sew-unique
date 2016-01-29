require 'spec_helper'

describe 'alerts/_list_item.html.erb' do
  before(:each) do
    @alert = FactoryGirl.create(:alert)
  end

  it 'should render' do
    render partial: 'alerts/list_item', locals: { alert: @alert }

    expect(rendered).to match(@alert.text)
  end
end

