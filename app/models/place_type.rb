# == Schema Information
#
# Table name: place_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_place_types_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class PlaceType < ApplicationRecord

  # Properties
  self.table_name  = 'place_types'
  self.primary_key = 'id'

  # Relationships
  has_many :places, dependent: :delete_all
  belongs_to :user
end
