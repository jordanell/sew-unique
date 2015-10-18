FactoryGirl.define do
  factory :gallery do
    title { "Gallery #{SecureRandom.uuid}" }
    description 'Gallery description'
    visible true
  end
end
