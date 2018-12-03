class Location < ApplicationRecord
  has_many :users
  has_many :zodiacs, through: :users
end
