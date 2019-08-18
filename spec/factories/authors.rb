# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    name { Faker::Name.unique.name }
    bio { Faker::Movies::HarryPotter.quote }
    date_of_birth { Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today) }
    hometown { Faker::Address.city }
  end
end
