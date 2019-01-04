FactoryBot.define do
  factory :user do
    name {Faker::HarryPotter.character}
    email {Faker::Internet.email}
    password {'password'}
  end
end
