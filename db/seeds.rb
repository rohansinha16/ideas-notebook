# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Idea.destroy_all

p1 = Idea.new
p1.name = "Esther"
p1.description = "Today was a rainy day. I hated walking in the rain."
p1.save

p2 = Idea.new
p2.name = "Rohan"
p2.description = " I hate clouds. They are gross. "
p2.save

puts "Generated 2 ideas"
