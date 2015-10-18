FactoryGirl.define do
  factory :gallery do
    title { "Gallery #{SecureRandom.uuid[0..10]}" }
    description 'Gallery description'
    visible true
  end
end
