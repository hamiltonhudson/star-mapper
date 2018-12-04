class User < ApplicationRecord
  belongs_to :zodiac
  belongs_to :location

  validates :birthday, presence: true
end
