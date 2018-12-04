class User < ApplicationRecord
  belongs_to :zodiac
  belongs_to :location

  validates :birthday, presence: true
  # validate :find_zodiac_for_user

  # before_validation :bday_to_zodiac
  # def zodiac_sign
  #   @user.zodiac = Zodiac.find_or_create_by(sign: sign)
  # end
  #
  # def find_zodiac_for_user
  #   if birthday.between?(0320..0420)
  #     "Aries"
  #     byebug
  #   else
  #     "not working"
  #   end
  # end
  #
  # def bday_to_zodiac
  #   self.zodiac = self.find_zodiac_for_user
  # end
end
