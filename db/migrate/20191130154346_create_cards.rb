# frozen_string_literal: true

class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string(:name, null: false)
      t.date(:deadline)
      t.string(:owner, null: false)
      t.references(:list, null: false, foreign_key: true)

      t.timestamps
    end
  end
end
