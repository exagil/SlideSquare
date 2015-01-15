# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# SLIDE
presentation_a = Presentation.new(title: "The Rocket Games company culture", body: "The Rocket Games company culture - an open look at what defines our company. Who we are, and what we'd like to be.")
presentation_a.save

presentation_b = Presentation.new(title: "Behavioural Economics in Advertising Planning", body: "Presentation on Behavioural Economics and the use for it in brand/advertising planning within the creative industries.")
presentation_b.save

presentation_c = Presentation.new(title: "How to Make Presentations on The Go Using Your iPad", body: "We're all busy people; surely we don't have time to make all the presentations we need to... Well, meet the answer to your problems - this 'how to' guide tells you everything you need to know to make presentations on the go using your iPad. Never waste a train journey again!")
presentation_c.save