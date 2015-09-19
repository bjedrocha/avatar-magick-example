# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create a default user
user = User.create(login: 'tdurden', password: 'password', password_confirmation: 'password')

# Create a couple of contacts
user.contacts.create(first_name: 'Linda', last_name: 'Benjamin', email: 'lbenjamin@example.com', phone_number: '555-545-4554')
user.contacts.create(first_name: 'Vera', last_name: 'Farmiga', email: 'vfarmiga@example.com', phone_number: '555-523-3256')
user.contacts.create(first_name: 'Bart', last_name: 'Jedrocha', email: 'bjedrocha@example.com')
user.contacts.create(first_name: 'Brad', last_name: 'Mendosi', email: 'bmendosi@example.com', phone_number: '289-555-5555')
user.contacts.create(first_name: 'Mary', last_name: 'Swanson', email: 'mswanson@example.com')