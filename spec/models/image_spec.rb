# == Schema Information
#
# Table name: images
#
#  id                 :integer          not null, primary key
#  gallery_id         :integer          not null
#  title              :string
#  description        :string
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'spec_helper'

RSpec.describe Image, type: :model do
  before do
    @image = FactoryGirl.create(:image)
  end

  subject{ @image }

  # Attributes
  it { should respond_to(:id) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }
  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:image_file_name) }
  it { should respond_to(:image_content_type) }
  it { should respond_to(:image_file_size) }
  it { should respond_to(:image_updated_at) }

  # Associations
  it { should respond_to(:gallery) }
  it { should respond_to(:image) }

  # Validations
  it 'should have a gallery_id' do
    @image.gallery = nil

    @image.should_not be_valid
  end

  it 'should have an image' do
    @image.image = nil

    @image.should_not be_valid
  end

  it 'should allow image jpg' do
    @image.image_content_type = 'image/jpg'

    @image.should be_valid
  end

  it 'should allow image jpeg' do
    @image.image_content_type = 'image/jpeg'

    @image.should be_valid
  end

  it 'should allow image gif' do
    @image.image_content_type = 'image/gif'

    @image.should be_valid
  end

  it 'should allow image png' do
    @image.image_content_type = 'image/png'

    @image.should be_valid
  end

  it 'should not allow image larger than 5 megabytes' do
    @image.image_file_size = (5.megabytes + 1)

    @image.should_not be_valid
  end
end
