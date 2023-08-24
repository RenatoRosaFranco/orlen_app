# == Schema Information
#
# Table name: places
#
#  id            :bigint           not null, primary key
#  latitude      :float
#  longitude     :float
#  name          :string
#  slug          :string
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
require 'rails_helper'

RSpec.describe Place, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
