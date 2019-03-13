class Location < ApplicationRecord
  has_many :users
  has_many :zodiacs, through: :users

#   def self.search(search)
#   if search
#     user = User.find_by(name: search)
#     if user
#       self.where(user.zodiac_id: user)
#     else
#       self.all
#     end
#   else self.all
#   end
# end

  def self.most_popular
    User.all.each do |location|
      all = location.users
    puts all
      # location.users.name
      # most_popular = location_count.sort.last
    end
  end

  # def total_users_for_location
  #
  # end
  #
  # def users_by_sign
  #
  # end
  #
  # def most_popular_by_sign
  #
  # end
  #
  # def least_popular_by_sign
  #   self.zodiacs.sort_by {|zodiac| zodiac.users.count.last}
  # end

  #for user find favorite/most popular location for other
  #users of that users_by_sign
end
