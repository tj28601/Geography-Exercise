require 'factory_bot'

# FactoryBot.define do
#   factory :user do
#     sequence(:email) {|n| "user#{n}@example.com" }
#     password 'password'
#     password_confirmation 'password'
#   end
#
# end

FactoryBot.define do
  factory :state do
    name "Rakanda"
    capital "North Pole"
  end
end

# FactoryBot.define do
#   factory :state do
#   end
# end
