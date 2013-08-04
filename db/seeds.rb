# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.create(title:"velocity girl", artist:"primal scream")
Song.create(artist:"jonathan richman", title:"let her go into the darkness")
Song.create(title:"silent night", artist:"sufjan stevens")
Song.create(title:"belly button", artist:"sufjan stevens")


10.times do |i|
  User.create([email: "#{i}@abc.com", password: "12345678"])
end

10.times do |i|
  UserUploaded.create(user_id: "#{i}", song_id: "#{i}")
end

10.times do |i|
  UserHistory.create(user_id: "#{10 - i}", song_id: "#{i}")
end
