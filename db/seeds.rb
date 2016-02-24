# This file should contain all the record creation needed
# to seed the database with its default values.
# The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Car.create(name: 'VW Golf')
Car.create(name: 'Mercedes A')
Car.create(name: 'Fiat Punto')

Room.create(name: 'Besprächungsraum Sanihaus')
Room.create(name: 'Besprächungsraum Gellendorf')

# Das nicht dry!
# und wird wenn die Zeit reicht
# und wird im recoding geändert

# pass = '12345678'
# User.create(username: 'admin',first_name: 'Roman', last_name: 'D.', email: 'admin@multifit.info', password: pass)
# admin.add_role :admin
# puts "Admin password is #{pass}"

user = User.new
user.username = 'admin'
user.first_name = 'Team'
user.last_name = 'Division by Zero Inc.'
user.email = 'edv@multifit.com'
user.password = 'test1234'
user.save

user.add_role(:admin)
