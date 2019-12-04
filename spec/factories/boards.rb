# frozen_string_literal: true

require('faker')

FactoryBot.define do
  factory :board do
    sequence(:name) { |n| "Project number #{n}" }
    team { Faker::Lorem.word }
    trait :with_lists do
      after(:create) do |board|
        create_list(:list, 7, :with_cards, board: board)
      end
    end
  end
end
