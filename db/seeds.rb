# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: "Micaella", email: "micaelc@g.clemson.edu", password: "12345")

event_1 = Event.create(name: "Greenville School", user_id: user.id, description: "Collect sweaters for kids 10-12", address: "2 Allen street", due_by: 10.days.from_now, contact: "534354654", website: "1234@gmail.com")

event_2 = Event.create(name: "Hurricane in Uruguay", user_id: user.id, description: "Collect red hats", address: "4 Allen street", due_by: 8.days.from_now, contact: "5263115", website: "mica@gmail.com")

#item_2 = Item.create(name: "socks", size: "S, m, L", quantity: 11, description: "coecting socks for any size for victims of hurricane katrina")
#item_1 = Item.create(name: "sweater", size: "kids 10-12", quantity: 34, description: "Collecting sweaters for a low-income school to give sweaters to students for Christmas")
