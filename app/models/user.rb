class User < ApplicationRecord
  belongs_to :zodiac_id
  belongs_to :location_id
end
