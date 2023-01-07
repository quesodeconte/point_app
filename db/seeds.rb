# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'kana@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Point.create!([
    {
        "name": "Kana",
        "total": 100
    },
    {
        "name": "Chii",
        "total": 0
    },
    {
        "name": "Matt",
        "total": 0
    }
])