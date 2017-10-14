# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({ email: 'spampi1991@gmail.com', password: 'adminadmin' })
girone = Team.create({ name: 'Girone', stadium: 'Bagno a Ripoli', address: 'Via Roma Bagno a Ripoli, FI', telephone: '-', pitch_type: 'Sintetico' })
quona = Team.create({ name: 'Quona', stadium: 'Molin del piano', address: 'Molin del piano, FI', telephone: '-', pitch_type: 'Sintetico' })
season = Season.create({ name: '2017/2018', year: 2018  })
Ranking.create({ season: season, team: girone })
Player.create({ name: 'Francesco', surname: 'Spampinato', birthday: Date.new(1991, 2, 16), role: 'Difensore', preferred_foot: 'Dx' })
Event.create({ event_date: DateTime.new(2018, 1, 1, 20, 30, 0), local_team: girone, away_team: quona, season: season })




