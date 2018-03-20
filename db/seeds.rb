# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#


20.times do
  Client.create(
                register_date: Faker::Time.between(28.days.ago, Date.today, :all),
                insured: Faker::Name.name_with_middle,
                cnpj: Faker::Number.number(13),
                supervisor: Faker::Name.name_with_middle,
                director: Faker::Name.name_with_middle,
                assistant: Faker::Name.name_with_middle,
                commercial_supervisor: Faker::Name.name_with_middle,
                validity: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                city: Faker::Address.city,
                estate: Faker::Address.state,
                user_id: 1
               )
end
