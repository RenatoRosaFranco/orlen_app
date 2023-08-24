# frozen_string_literal: true

class AddColumnVideoPathToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :video_path, :string
  end
end
