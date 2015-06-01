require 'spec_helper'

describe 'root/_contact.html.erb' do
  it 'should render' do
    render

    expect(rendered).to match /Where to find us/
  end
end