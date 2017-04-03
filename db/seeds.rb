# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all if Item.any?

15.times do
  Item.create!(
    description: Faker::Hipster.sentence,
    completed: Faker::Boolean.boolean,
    due_to: Faker::Date.between(2.days.ago, 2.days.from_now)
  )
end
