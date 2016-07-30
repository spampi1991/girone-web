# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

local_team = Team.create({ name: 'Girone Calcio', stadium: 'San Marcellino', foundation_year: 2012, telephone: '055/606480' })
away_team = Team.create({ name: 'Quona Calcio', stadium: 'Molin del piano', foundation_year: 2000, telephone: '055/7458235' })
current_season = Season.create({ name: 'Stagione 2016/17', year: 2016 })

Player.create({ name: 'Francesco', surname: 'Spampinato', birthday: Date.current, role: 'Difensore', team: local_team })
Event.create({ event_date: Date.current, local_team: local_team, away_team: away_team, season: current_season })

