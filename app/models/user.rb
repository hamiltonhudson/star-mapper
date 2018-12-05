class User < ApplicationRecord
  belongs_to :zodiac
  belongs_to :location

  validates :birthday, presence: true

  def find_zodiac_for_user
    if self.birthday.between?(320,419)
      "Aries"
    elsif self.birthday.between?(420,520)
      "Taurus"
    elsif self.birthday.between?(521,620)
      "Gemini"
    elsif self.birthday.between?(621,722)
      "Cancer"
    elsif self.birthday.between?(723,822)
      "Leo"
    elsif self.birthday.between?(823,922)
      "Virgo"
    elsif self.birthday.between?(923,1022)
      "Libra"
    elsif self.birthday.between?(1023,1121)
      "Scorpio"
    elsif self.birthday.between?(1122,1221)
      "Sagittarius"
    elsif self.birthday < 120 || self.birthday > 1221
      "Capricorn"
    elsif self.birthday.between?(120,218)
      "Aquarius"
    else self.birthday.between?(219,320)
      "Pisces"
    # elsif self.birthday < 120 || self.birthday > 1221
    #   "Capricorn"
    end
  end

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
