require 'spec_helper'

describe 'root/index.html.erb' do
  context 'when galleries are present' do
    before(:each) do
      @gallery = FactoryGirl.create(:gallery)
    end

    it 'should render' do
      assign(:galleries, [@gallery])

      render

      expect(rendered).to match /Sew Unique/
    end
  end

  context 'when galleries are not present' do
    it 'should fail to render' do
      expect{render}.to raise_error(ActionView::Template::Error)
    end
  end
end