FactoryBot.define do
  factory :appointment do
    appointmentTime { Faker::Date.in_date_period }
    user_id { nil }
    trainer_id { nil }
  end
end
