# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
bubah = User.create(first_name: 'Bubah', last_name: 'Conteh', email: 'contehbub@gmail.com', password: 'Lebron23!', password_confirmation: 'Lebron23!', role: 'editor')
a2 = Page.create(cover: "", title: "Portfolio", description: "Portfolio website you are currently viewing. This is one of my first websites")
