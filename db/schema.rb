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

ActiveRecord::Schema.define(version: 20140531184333) do

  create_table "games", force: true do |t|
    t.string   "name"
    t.integer  "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["system_id"], name: "index_games_on_system_id"

  create_table "groups", force: true do |t|
    t.string   "name"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["game_id"], name: "index_groups_on_game_id"

  create_table "groups_powers", id: false, force: true do |t|
    t.integer "group_id"
    t.integer "power_id"
  end

  create_table "levels", force: true do |t|
    t.string   "name"
    t.integer  "level"
    t.text     "description"
    t.integer  "power_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "levels", ["power_id"], name: "index_levels_on_power_id"

  create_table "list_associations", id: false, force: true do |t|
    t.integer "first_list_id"
    t.integer "second_list_id"
  end

  create_table "list_values", force: true do |t|
    t.string   "text"
    t.integer  "list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "list_values", ["list_id"], name: "index_list_values_on_list_id"

  create_table "lists", force: true do |t|
    t.string   "name"
    t.integer  "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lists", ["system_id"], name: "index_lists_on_system_id"

  create_table "powers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "systems", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
