# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141201034943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.integer  "user_id"
    t.string   "map_polyline"
    t.integer  "distance"
    t.date     "date_of_activity"
    t.integer  "activityid",       default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "team_id"
    t.integer  "awayteam_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_chats", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.integer  "total_wins"
    t.integer  "total_losses"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trash_talks", force: true do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "strava_name"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "city"
    t.string   "state"
    t.string   "sex"
    t.string   "profile_img"
    t.string   "token"
    t.integer  "strava_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
