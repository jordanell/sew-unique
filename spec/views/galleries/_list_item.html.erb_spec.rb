require 'spec_helper'

describe 'images/_list_item.html.erb' do
  before(:each) do
    @image = FactoryGirl.create(:image)
  end

  it 'should render' do
    render partial: 'images/list_item', locals: { image: @image }

    expect(rendered).to match(@image.title)
  end
end
