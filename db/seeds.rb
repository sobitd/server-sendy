# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Seeding'
# User.create!(first_name: 'Daniel',
#              last_name: 'Sobit',
#              email: 'daniel.sobit@student.moringaschool.com',
#              phone_number: '0799352354',
#              username: 'sobbo',
#              password: "admin",
#              isAdmin: 1)

# User.create!(first_name: 'Kimani',
#              last_name: 'Ichungwa',
#              email: 'datagam@gmail.com',
#              phone_number: '0733466577',
#              username: 'redo',
#              password: 'boilerplate99944',
#              isAdmin: 0)

parcel_one = Api::V1::Parcel.create!(
  recipient_name: 'Laban Kimtai',
  distance: 10,
  recipient_contact: '0713245678',
  order_status: 'in-transit',
  weight: 10,
  from: 8,
  destination: 12,
  user_id: 1
)

parcel_two = Api::V1::Parcel.create!(
  recipient_name: 'Steven Kipsang',
  distance: 12,
  recipient_contact: '0712346789',
  order_status: 'processed',
  weight: 4,
  from: 3,
  destination: 4,
  user_id: 2
)
