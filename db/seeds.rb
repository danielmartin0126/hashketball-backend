# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.find_or_create_by(f_name:"Josh", l_name:"Smith", position:"F")
User.create(name:"danny", team_name:"Dunkaroos", profile_pic:"hi")



all_pages = (1..32).to_a


all_pages.each do |i|
    url = "https://www.balldontlie.io/api/v1/players/?per_page=100&page=#{i}"
    # uri = URI.parse(URI.encode(url.strip))
    # byebug
  player_string = RestClient.get(url)
  player_hash = JSON.parse(player_string) 
  player_hash["data"].each do |player|
    Player.find_or_create_by(f_name: player["first_name"], l_name: player["last_name"], position: player["position"], api_id:player["id"])
  end
end 

