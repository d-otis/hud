# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_03_182222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "latin_name"
    t.text "description"
    t.string "watering"
    t.string "light"
    t.text "fertilization"
    t.string "pest_and_disease"
    t.integer "temp_low"
    t.integer "temp_hi"
    t.string "soil"
    t.string "pruning"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "room_id"
  end

  create_table "plants_seasons", id: false, force: :cascade do |t|
    t.bigint "season_id", null: false
    t.bigint "plant_id", null: false
    t.index ["plant_id", "season_id"], name: "index_plants_seasons_on_plant_id_and_season_id"
    t.index ["season_id", "plant_id"], name: "index_plants_seasons_on_season_id_and_plant_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
