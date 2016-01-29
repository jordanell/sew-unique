FactoryGirl.define do
  factory :alert do
    text { "Alert #{SecureRandom.uuid[0..10]}" }
  end
end
