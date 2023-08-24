# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  admin                  :boolean          default(FALSE)
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
FactoryBot.define do
  factory :user do
    name { FFaker::Name.name }
    email { FFaker::Internet.email }
    password { "!Test123" }
    password_confirmation { "!Test123" }
    admin { false }

    trait :admin do
      name { 'Renato Franco' }
      email { 'renato.franco@orlen.com.br' }
      admin { true }
    end

    trait :with_places do
      after(:create) do |user, evaluator|
        create_list(:place, 5, user: user)
      end
    end
  end
end
