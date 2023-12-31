# frozen_string_literal: true

class AddColumnUserIdToPlaceTypes < ActiveRecord::Migration[7.0]
  def change
    add_reference :place_types, :user, null: false, foreign_key: true
  end
end
