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
class PlaceTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :slug, :user

  def user
    object.user&.name
  end
end
