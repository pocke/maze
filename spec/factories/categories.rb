FactoryGirl.define do
  factory :category do
    name {SecureRandom.hex(20)}
    description {SecureRandom.hex(300)}
  end
end
