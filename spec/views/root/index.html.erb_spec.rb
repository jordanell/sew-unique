require 'spec_helper'

describe 'root/index.html.erb' do
  it 'should render' do
    render

    expect(rendered).to match /Your message has been successfully sent!/
  end
end
