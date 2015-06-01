require 'spec_helper'

describe 'root/_contact_bar.html.erb' do
  it 'should render' do
    render

    expect(rendered).to match /250/
  end
end