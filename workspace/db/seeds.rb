# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
500.times do |t|
    c = Salon.new
    c.nazwa = Faker::Name.name
    c.rocznik = Faker::Number.number(4)
    c.przebieg = Faker::Number.number(10)
    c.cena = Faker::Number.number(10)
    c.save
end
