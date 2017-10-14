# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171014161005) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", id: :serial, force: :cascade do |t|
    t.datetime "event_date"
    t.integer "local_team_id"
    t.integer "away_team_id"
    t.integer "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "local_team_goals"
    t.integer "away_team_goals"
    t.index ["away_team_id"], name: "index_events_on_away_team_id"
    t.index ["event_date", "season_id", "local_team_id", "away_team_id"], name: "event_logical_key", unique: true
    t.index ["local_team_id"], name: "index_events_on_local_team_id"
    t.index ["season_id"], name: "index_events_on_season_id"
  end

  create_table "players", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.date "birthday"
    t.string "role"
    t.integer "shirt_number"
    t.string "preferred_foot"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "description"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "rankings", force: :cascade do |t|
    t.integer "victories", default: 0, null: false
    t.integer "defeats", default: 0, null: false
    t.integer "draws", default: 0, null: false
    t.integer "games", default: 0, null: false
    t.integer "goals_scored", default: 0, null: false
    t.integer "goals_suffered", default: 0, null: false
    t.integer "points", default: 0, null: false
    t.bigint "team_id"
    t.bigint "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "goals_difference"
    t.index ["season_id", "team_id"], name: "ranking_logical_key", unique: true
    t.index ["season_id"], name: "index_rankings_on_season_id"
    t.index ["team_id"], name: "index_rankings_on_team_id"
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "role_id", null: false
    t.index ["role_id"], name: "index_roles_users_on_role_id"
    t.index ["user_id"], name: "index_roles_users_on_user_id"
  end

  create_table "seasons", id: :serial, force: :cascade do |t|
    t.integer "year"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "stadium"
    t.string "address"
    t.string "telephone"
    t.string "pitch_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "seasons"
  add_foreign_key "events", "teams", column: "away_team_id"
  add_foreign_key "events", "teams", column: "local_team_id"
  add_foreign_key "players", "teams"
  add_foreign_key "rankings", "seasons"
  add_foreign_key "rankings", "teams"
end
