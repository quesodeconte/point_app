# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# AdminUser.create!(email: 'matt@test.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
# User.create!(email: 'user@example.com', password: 'password', employee_code: 'E1DK5000', password_confirmation: 'password') if Rails.env.development?

Point.create!([
    {
        "admin_user_id": 2,
        "total": 0,

    },
    {
        "admin_user_id": 2,
        "total": 100
    },
    {
        "admin_user_id": 2,
        "total": 80
    }
])