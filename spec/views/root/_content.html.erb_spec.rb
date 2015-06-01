require 'spec_helper'

describe 'root/_content.html.erb' do
  it 'should render' do
    render

    expect(rendered).to match /What we have to offer/
  end
end