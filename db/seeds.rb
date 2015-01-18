# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Categories

Category.new(name: 'Leadership').save
Category.new(name: 'Technology').save
Category.new(name: 'Education').save
Category.new(name: 'Marketing').save
Category.new(name: 'Design').save
Category.new(name: 'History').save