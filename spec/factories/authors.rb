# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    name { Faker::Name.name }
    bio { Faker::Movies::HarryPotter.quote }
    date_of_birth { Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today) }
    hometown { Faker::Address.city }
  end
end
