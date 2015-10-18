# == Schema Information
#
# Table name: galleries
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :string
#  visible     :boolean          default(TRUE)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

RSpec.describe Gallery, type: :model do
  before do
    @gallery = FactoryGirl.create(:gallery)
  end

  subject{ @gallery }

  # Attributes
  it { should respond_to(:id) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }
  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:visible) }

  # Associations
  it { should respond_to(:images) }

  # Validations
  it 'should have a title' do
    @gallery.title = nil

    @gallery.should_not be_valid
  end

  it 'should have a unique title' do
    @gallery2 = FactoryGirl.create(:gallery, title: 'Test')
    @gallery.title = 'Test'

    @gallery.should_not be_valid
  end

  # Scopes
  it 'should exclude private galleries' do
    @gallery2 = FactoryGirl.create(:gallery, title: 'Test', visible: false)

    Gallery.visible.should_not include(@gallery2)
  end
end
