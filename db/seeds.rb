# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.find_or_create_by(f_name:"Josh", l_name:"Smith", position:"F")
User.create(name:"danny", team_name:"Dunkaroos", profile_pic:"hi")
