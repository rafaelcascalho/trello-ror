# frozen_string_literal: true

class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string(:name, null: false)
      t.string(:team)

      t.timestamps
    end
  end
end
