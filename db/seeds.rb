# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
super_user = User.create!(
  email: "elog@elog.com.",
  name: "elog",
  password: '0101elog0101',
  password_confirmation: '0101elog0101',
  is_super: true,
  is_admin: false
)
