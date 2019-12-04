# frozen_string_literal: true

class Card < ApplicationRecord
  belongs_to :list

  validates :name, :owner, :deadline, presence: true
end
