require 'spec_helper'

describe 'galleries/_list_item.html.erb' do
  before(:each) do
    @gallery = FactoryGirl.create(:gallery)
  end

  it 'should render' do
    render partial: 'galleries/list_item', locals: { gallery: @gallery }

    expect(rendered).to match(@gallery.title)
  end
end
