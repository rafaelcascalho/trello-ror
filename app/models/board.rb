# frozen_string_literal: true

class Board < ApplicationRecord
  has_many :lists, dependent: :destroy

  validates :name, presence: true
end
