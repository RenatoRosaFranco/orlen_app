# frozen_string_literal: true

class AddColumnDescriptionToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :description, :text
  end
end
