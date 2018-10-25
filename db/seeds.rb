require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  doctor = Doctor.create!(first_name: Faker::Book.title, last_name: Faker::Food.dish, postal_code: Faker::Internet.email)
end

10.times do 
	patient = Patient.create!(first_name: Faker::Pokemon.name, last_name: Faker::Food.dish)
end

5.times do
	combo = Appointment.create!(doctor: Faker::Pokemon.name, patient: Faker::Company.name)
end