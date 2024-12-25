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

ActiveRecord::Schema[7.0].define(version: 2024_12_25_141603) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coffees", force: :cascade do |t|
    t.string "name", null: false
    t.string "bean_type"
    t.string "brew_method"
    t.integer "acidity", default: 0
    t.integer "bitterness", default: 0
    t.integer "smoothness", default: 0
    t.integer "sweetness", default: 0
    t.integer "aroma", default: 0
    t.integer "aftertaste", default: 0
    t.integer "body", default: 0
    t.string "country"
    t.string "region"
    t.integer "drink_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "content"
    t.text "answer"
    t.datetime "asked_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "user_ratings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "coffee_id", null: false
    t.integer "overall_rating"
    t.integer "drink_count", default: 0
    t.date "last_drank_on"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffee_id"], name: "index_user_ratings_on_coffee_id"
    t.index ["user_id"], name: "index_user_ratings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "questions", "users"
  add_foreign_key "user_ratings", "coffees"
  add_foreign_key "user_ratings", "users"
end
