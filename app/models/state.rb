class State < ApplicationRecord
  validates :name, presence: true
  validates :capital, presence: true
end
