require 'spec_helper'

describe 'root/_about.html.erb' do
  it 'should render' do
    render

   expect(rendered).to match /About Me/
  end
end