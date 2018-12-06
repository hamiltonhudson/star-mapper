class Zodiac < ApplicationRecord
  has_many :users
  has_many :locations, through: :users

  # def self.search(search)
  # if search
  #   user = User.find_by(name: search)
  #   if user
  #     self.where(user: user)
  #   else
  #     self.all
  #   end
  # else self.all
  # end
# end
end
