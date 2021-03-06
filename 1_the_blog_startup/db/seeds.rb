# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |index|
  User.create(:name => Faker::Xmen.character)
end

100.times do |index|
  x = rand(1..10)
  user = User.find(x)
  Post.create(:users_id => user.id, :name => "Action with #{Faker::Xmen}", :body => Faker::Xmen.quote, :description => Faker::Xmen.nicest_guys)
end
