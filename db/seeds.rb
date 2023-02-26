# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!([
    {
        name: "小林　可奈",
        email: 'kana@example.com',
        is_admin: 1,
        password: 'password',
        password_confirmation: 'password'
    },
    {
        name: "小林　千紘",
        email: 'chi@example.com',
        is_admin: 0,
        password: 'password',
        password_confirmation: 'password'
    },
    {
        name: "ホプキンス　マット",
        email: 'matt@example.com',
        is_admin: 1,
        password: 'password',
        password_confirmation: 'password'
    }
])

Point.create([{"admin_user_id": 1, "total": 100 }])
Point.create([{"admin_user_id": 2, "total": 10 }])
Point.create([{"admin_user_id": 3, "total": 5 }])