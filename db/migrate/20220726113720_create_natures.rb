# frozen_string_literal: true

class CreateNatures < ActiveRecord::Migration[6.1]
  def change
    create_table :natures do |t|
      t.string :name
      t.string :description
      t.string :category
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
