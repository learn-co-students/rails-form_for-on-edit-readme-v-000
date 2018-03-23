# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Fish.create(name: "Nemo", color: "Blue")
Fish.create(name: "Jaws", color: "White")
Fish.create(name: "Moby", color: "Green-ish Blue")

Post.create(title: "Sad Story", description: "It's a long story")
Post.create(title: "Happy Story", description: "It's a short story")
Post.create(title: "Even Story", description: "It's a sort-of long story")
