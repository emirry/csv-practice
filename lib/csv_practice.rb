require 'csv'
require 'awesome_print'
# all_fields = w%(Id Name Sex Age Height Weight Team NOC Games Year Season City Sport Event Medal)
# required_olympian_fields = w%(Id Name Height Team Year City Sport Event Medal)
def get_all_olympic_athletes(filename)
  olympic_athlete = CSV.read(filename, headers: true).map(&:to_h)
  required_olympian_fields = %w(ID Name Height Team Year City Sport Event Medal)

  olympic_athlete.each do |athlete_array|
    athlete_array.select! { |category, value| required_olympian_fields.include?(category) }
  end

  return olympic_athlete
end
# p get_all_olympic_athletes('../data/athlete_events.csv')

def total_medals_per_team(olympic_data)
  expected_totals = 0
  medals_per_team_hash = {}
  olympic_athletes = get_all_olympic_athletes('../lib/sample.csv')

  olympic_athletes.each do |athlete, value|
    puts "#{athlete["City"]} => #{value}"
  end

  return expected_totals

end

def get_all_gold_medalists(olympic_data)

end
