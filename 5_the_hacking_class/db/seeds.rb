# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |i|
  Cour.create(title: Faker::Felix.course, description: Faker::TheBoss.fact)
end

50.times do |i|
  x = rand(1..10)
  cour = Cour.find(x)
  User.create(:name => Faker::You.name, cour_id: cour.id)
end

100.times do |i|
  x = rand(1..10)
  cour = Cour.find(x)
  Lesson.create(title: Faker::TheBest.quote, body: Faker::IsYou.quote, cour_id: cour.id)
end
