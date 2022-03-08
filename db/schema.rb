# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_07_064801) do
  create_table "coordinates", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "route_coordinates", force: :cascade do |t|
    t.integer "coordinate_id", null: false
    t.integer "route_id", null: false
    t.integer "index"
    t.boolean "final"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coordinate_id"], name: "index_route_coordinates_on_coordinate_id"
    t.index ["route_id"], name: "index_route_coordinates_on_route_id"
  end

  create_table "routes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_routes_on_user_id"
  end

  create_table "trip_coordinates", force: :cascade do |t|
    t.integer "trip_id", null: false
    t.integer "coordinate_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coordinate_id"], name: "index_trip_coordinates_on_coordinate_id"
    t.index ["trip_id"], name: "index_trip_coordinates_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "route_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_trips_on_route_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "age"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "route_coordinates", "coordinates"
  add_foreign_key "route_coordinates", "routes"
  add_foreign_key "routes", "users"
  add_foreign_key "trip_coordinates", "coordinates"
  add_foreign_key "trip_coordinates", "trips"
  add_foreign_key "trips", "routes"
  add_foreign_key "trips", "users"
end
