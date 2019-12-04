# frozen_string_literal: true

require('faker')

FactoryBot.define do
  factory :list do
    sequence(:name) { |n| "Stage #{n}" }
    trait :with_cards do
      after(:create) do |list|
        create_list(:card, 7, list: list)
      end
    end
  end
end
