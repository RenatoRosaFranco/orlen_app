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
FactoryBot.define do
  factory :place_type do
    name { 'Ponto Turistico' }

    user
  end

  trait :public_institution do
    name { 'Instituição Publica' }
  end

  trait :school do
    name { 'Escola' }
  end

  trait :university do
    name { 'Universidade' }
  end

  trait :hospital do
    name { 'Hospital' }
  end

  trait :company do
    name { 'Empresa '}
  end
end
