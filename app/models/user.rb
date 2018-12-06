class User < ApplicationRecord
  belongs_to :zodiac
  belongs_to :location

  validates :birth_month, presence: true
  validates :birth_day, presence: true

  # before_validation :find_zodiac_for_user

  def combine_bday
    bday = "#{self.birth_month} #{self.birth_day}"
  end

  def find_zodiac_for_user
    user_bday = Chronic.parse(combine_bday)
    Zodiac.all.each do |zodiac|
      start_date = Chronic.parse(zodiac.start_date)
      end_date = Chronic.parse(zodiac.end_date)
      if user_bday.between?(start_date, end_date)
        self.zodiac = zodiac
      end
    end
  end

  def self.search(search)
    if search
      zodiac = Zodiac.find_by(sign: search)
      if zodiac
        self.where(zodiac_id: search)
      else
        self.all
      end
    else self.all
    end
  end

end
