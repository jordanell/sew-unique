require 'spec_helper'

describe 'photos/_gallery.html.erb' do
  it 'should render' do
    render

    expect(rendered).to match /Gallery/
  end
end