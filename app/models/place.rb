# frozen_string_literal: true

# == Schema Information
#
# Table name: places
#
#  id            :bigint           not null, primary key
#  description   :text
#  latitude      :float
#  longitude     :float
#  name          :string
#  slug          :string
#  ucode         :string
#  video_path    :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  place_type_id :bigint
#  user_id       :bigint           not null
#
# Indexes
#
#  index_places_on_place_type_id  (place_type_id)
#  index_places_on_user_id        (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (place_type_id => place_types.id)
#  fk_rails_...  (user_id => users.id)
#
class Place < ApplicationRecord

  # Properties
  self.table_name  = 'places'
  self.primary_key = 'id'

  # Relationships
  belongs_to :place_type
  belongs_to :user
end
