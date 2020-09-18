require "awesome_print"
require "csv"

def get_all_olympic_athletes(filename)
  olympic_athlete = CSV.read(filename, headers: true).map(&:to_h)
  required_olympian_fields = %w(ID Name Height Team Year City Sport Event Medal)

  olympic_athlete.each do |athlete_array|
    athlete_array.select! { |category, value| required_olympian_fields.include?(category)}
    puts olympic_athlete
    ap olympic_athlete
  end
  return olympic_athlete
end

# olympic_athletes = get_all_olympic_athletes('../lib/sample.csv')

def total_medals_per_team(olympic_data)
  # olympic_athletes
 expected_totals = 0
  medals_per_team_hash = {}
  olympic_athletes = get_all_olympic_athletes('../lib/sample.csv')

  olympic_athletes.each do |athlete, value|
    puts "#{athlete["City"]} => #{value}"
    end


end

p total_medals_per_team('../lib/sample.csv')