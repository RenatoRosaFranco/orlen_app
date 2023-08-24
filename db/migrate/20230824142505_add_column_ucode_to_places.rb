# frozen_string_literal: true

class AddColumnUcodeToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :ucode, :string
  end
end
