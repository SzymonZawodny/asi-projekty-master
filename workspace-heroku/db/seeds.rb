# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
500.times do |t|
    c = AutoHandel.new
    c.marka = Faker::Name.name
    c.model = Faker::Name.name
    c.cena = Faker::Number.number(10)
    c.save
end