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

  create_table "game_invites", force: true do |t|
    t.integer  "team_id"
    t.integer  "to_id"
    t.integer  "from_id"
    t.string   "message"
    t.boolean  "accepted"
    t.boolean  "declined"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "title"
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
    t.string   "total_distance"
    t.string   "total_competitions"
    t.string   "total_wins"
    t.string   "total_losses"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trash_talks", force: true do |t|
    t.integer  "game_id"
    t.integer  "from_id"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_activities", force: true do |t|
    t.integer  "user_id"
    t.string   "map_id"
    t.string   "map_polyline"
    t.string   "map_smmary_polyline"
    t.integer  "moving_time"
    t.integer  "elapsed_time"
    t.integer  "distance"
    t.integer  "team_id"
    t.integer  "average_temp"
    t.integer  "max_speed"
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
    t.string   "country"
    t.string   "sex"
    t.string   "measurement_preference"
    t.string   "profile_img"
    t.string   "token"
    t.string   "refreshtoken"
    t.integer  "strava_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["team_id"], name: "index_users_on_team_id", using: :btree

end
