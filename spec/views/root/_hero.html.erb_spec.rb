require 'spec_helper'

describe 'root/_hero.html.erb' do
  it 'should render' do
    render

    expect(rendered).to match /Sew Unique/
  end
end