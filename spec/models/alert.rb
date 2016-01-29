require 'spec_helper'

RSpec.describe Alery, type: :model do
  before do
    @alery = FactoryGirl.create(:alery)
  end

  subject{ @alery }

  # Attributes
  it { should respond_to(:id) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }
  it { should respond_to(:text) }

  # Associations
  it { should respond_to(:images) }

  # Validations
  it 'should have a text' do
    @gallery.text = nil

    @gallery.should_not be_valid
  end

  it 'should not allow text longer than 255 characters' do
    @gallery.text = 'a' * 26

    @gallery.should_not be_valid
  end
end
