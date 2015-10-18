FactoryGirl.define do
  factory :image do
    title { "Image #{SecureRandom.uuid[0..10]}" }
    description 'Image description'
    image_file_name 'text_image.jpg'
    image_content_type 'image/jpg'
    image_file_size 10
    image_updated_at Time.now
    gallery
  end
end
