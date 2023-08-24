# frozen_string_literal: true

class CreatePlaceTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :place_types do |t|
      t.string   :name
      t.string   :slug

      t.timestamps
    end
  end
end
