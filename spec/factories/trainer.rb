FactoryBot.define do
  factory :trainer do
    name { Faker::Name }
    fightingStyle { Faker::Lorem.word }
    description { Faker::Lorem.word }
    trainerImg { Faker::Lorem.word }
  end
end
