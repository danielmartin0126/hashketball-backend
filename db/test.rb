require 'rest-client'
url = "https://www.balldontlie.io/api/v1/players/page=#{i}"
# encoded = URI.encode(`https://www.balldontlie.io/api/v1/players?per_page=100&page=#{i}`)
# parsed = URI.parse(encoded)
# byebug
  player_string = RestClient.get(url)
  puts player_string
#   player_hash = JSON.parse(player_string)
