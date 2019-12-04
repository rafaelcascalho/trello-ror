# frozen_string_literal: true

require('faker')

FactoryBot.define do
  factory :card do
    sequence(:name) { |n| "Task number #{n}" }
    deadline { Faker::Date.forward(days: 7) }
    owner { Faker::Name.name }
  end
end
