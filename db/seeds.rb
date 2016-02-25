# This file should contain all the record creation needed
# to seed the database with its default values.
# The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Car.create(name: 'Opel Vivaro')
Car.create(name: 'Opel Combo')
Car.create(name: 'Opel Astra')

Room.create(name: 'Besprächungsraum Sanihaus')
Room.create(name: 'Besprächungsraum Gellendorf')

# Das nicht dry!
# und wird wenn die Zeit reicht
# und wird im recoding geändert

user = User.new
user.username = 'admin'
user.first_name = 'Team'
user.last_name = 'Division by Zero Inc.'
user.email = 'edv@multifit.info'
user.password = 'test1234'
user.save

user.add_role(:admin)

user = User.new
user.username = 'testuser'
user.first_name = 'Max'
user.last_name = 'Mustermann'
user.email = 'asd@qwe.yxc'
user.password = 'test1234'
user.save

Message.create(title: 'Testnachricht', description:'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.' )