class User < ApplicationRecord
  belongs_to :zodiac
  belongs_to :location

  validates :birthday, presence: true
  before_validation :find_zodiac_for_user

  def find_zodiac_for_user
    if self.birthday.between?(320,419)
      self.zodiac_id = 1
      # "Aries"
    elsif self.birthday.between?(420,520)
      self.zodiac_id = 2
      # "Taurus"
    elsif self.birthday.between?(521,620)
      self.zodiac_id = 3
      # "Gemini"
    elsif self.birthday.between?(621,722)
      self.zodiac_id = 4
      # "Cancer"
    elsif self.birthday.between?(723,822)
      self.zodiac_id = 5
      # "Leo"
    elsif self.birthday.between?(823,922)
      self.zodiac_id = 6
      # "Virgo"
    elsif self.birthday.between?(923,1022)
      self.zodiac_id = 7
      # "Libra"
    elsif self.birthday.between?(1023,1121)
      self.zodiac_id = 8
      # "Scorpio"
    elsif self.birthday.between?(1122,1221)
      self.zodiac_id = 9
      # "Sagittarius"
    elsif self.birthday < 120 || self.birthday > 1221
      self.zodiac_id = 10
      # "Capricorn"
    elsif self.birthday.between?(120,218)
      self.zodiac_id = 11
      # "Aquarius"
    else self.birthday.between?(219,320)
      self.zodiac_id = 12
      # "Pisces"
    end
    # self.save
  end

end
