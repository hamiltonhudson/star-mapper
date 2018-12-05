class Zodiac < ApplicationRecord
  has_many :users
  has_many :locations, through: :users

end
