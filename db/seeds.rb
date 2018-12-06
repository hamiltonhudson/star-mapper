# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# def get_zodiacs_name(sign)
Zodiac.destroy_all
Location.destroy_all
User.destroy_all

all_zodiacs = RestClient.get('https://zodiacal.herokuapp.com/api')
zodiacs_array = JSON.parse(all_zodiacs)
zodiacs_array.each do |hash|
  Zodiac.create(sign: hash["name"], start_date: hash["sun_dates"].first,
  end_date: hash["sun_dates"].last, keywords: hash["keywords"].join(", "),
  symbol: hash["symbol"], element: hash["element"], quality: hash["cardinality"],
  vibe: hash["vibe"], mental_traits: hash["mental_traits"].join(", "),
  physical_traits: hash["physical_traits"].join(", "))
end


# end


locations = [
  {name: "Queens"},
  {name: "Bronx"},
  {name: "Brooklyn"},
  {name: "Staten Island"},
  {name: "Manhattan"},
]

locations.each {|location| Location.create(location)}

# zodiacs = [
# {sign: "Aries", start_date: 321, end_date: 419},
# {sign: "Taurus", start_date: 420, end_date: 520},
# {sign: "Gemini", start_date: 521, end_date: 0620},
# {sign: "Cancer", start_date: 621, end_date: 0722},
# {sign: "Leo", start_date: 723, end_date: 822},
# {sign: "Virgo", start_date: 823, end_date: 922},
# {sign: "Libra", start_date: 923, end_date: 1022},
# {sign: "Scorpio", start_date: 1023, end_date: 1121},
# {sign: "Sagittarius", start_date: 1122, end_date: 1221},
# {sign: "Capricorn", start_date: 1222, end_date: 119},
# {sign: "Aquarius", start_date: 120, end_date: 218},
# {sign: "Pisces", start_date: 219, end_date: 320},
# ]
#
# zodiacs.each {|zodiac| Zodiac.create(zodiac)}
#
# users = [
# {name: "Esther", birthday: 1215, birth_year: 1985},
# {name: "Tina", birthday: 1215, birth_year: 1985},
# {name: "Gene", birthday: 1215, birth_year: 1985},
# {name: "Louise", birthday: 1215, birth_year: 1985},
# {name: "Linda", birthday: 1215, birth_year: 1985},
# {name: "Bob", birthday: 1215, birth_year: 1985},
# {name: "Harry", birthday: 1215, birth_year: 1985},
# ]
#
# users = users.map {|user| user.merge ( { location_id: Location.all.sample.id,  zodiac_id: Zodiac.all.sample.id } ) }
#
# users.each { |user| User.create(user) }
