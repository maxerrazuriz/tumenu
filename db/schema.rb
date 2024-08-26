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

ActiveRecord::Schema[7.1].define(version: 2024_08_26_152621) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_diets", force: :cascade do |t|
    t.bigint "diet_id", null: false
    t.bigint "meal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diet_id"], name: "index_meal_diets_on_diet_id"
    t.index ["meal_id"], name: "index_meal_diets_on_meal_id"
  end

  create_table "meal_ingredients", force: :cascade do |t|
    t.bigint "ingredient_id", null: false
    t.bigint "meal_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_meal_ingredients_on_ingredient_id"
    t.index ["meal_id"], name: "index_meal_ingredients_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "cuisine"
    t.text "description"
    t.string "recipe"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_meals_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "meal_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_reviews_on_meal_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "user_diets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "diet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diet_id"], name: "index_user_diets_on_diet_id"
    t.index ["user_id"], name: "index_user_diets_on_user_id"
  end

  create_table "user_meals", force: :cascade do |t|
    t.date "date"
    t.string "time_of_day"
    t.bigint "meal_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_user_meals_on_meal_id"
    t.index ["user_id"], name: "index_user_meals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "meal_diets", "diets"
  add_foreign_key "meal_diets", "meals"
  add_foreign_key "meal_ingredients", "ingredients"
  add_foreign_key "meal_ingredients", "meals"
  add_foreign_key "meals", "users"
  add_foreign_key "reviews", "meals"
  add_foreign_key "reviews", "users"
  add_foreign_key "user_diets", "diets"
  add_foreign_key "user_diets", "users"
  add_foreign_key "user_meals", "meals"
  add_foreign_key "user_meals", "users"
end
