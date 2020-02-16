# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create ([
    { first_name: 'Sarah', last_name: 'jones', username: 'sarah', email: 'test1@gmail.com', password: '123456' },
    { first_name: 'Tt2', last_name: 'jones', username: 'test2', email: 'test2@gmail.com', password: '123456' },
    { first_name: 'Tt3', last_name: 'jones', username: 'test3', email: 'test3@gmail.com', password: '123456' },
    { first_name: 'Tt4', last_name: 'jones', username: 'test4', email: 'test4@gmail.com', password: '123456' },
    { first_name: 'Tt5', last_name: 'jones', username: 'test5', email: 'test5@gmail.com', password: '123456' }
    ])