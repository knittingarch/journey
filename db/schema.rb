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

ActiveRecord::Schema.define(version: 2020_06_28_054123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "category", null: false
    t.text "name", null: false
    t.text "notes"
    t.text "product_image_url"
    t.integer "rating"
    t.integer "profile_id"
    t.index ["profile_id"], name: "index_products_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name", null: false
    t.string "hair_state"
    t.date "big_chop_date"
    t.string "hair_type"
    t.date "hair_goal_date"
    t.string "hair_length_goal"
    t.string "measurement_type"
    t.text "profile_img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "product_id"
    t.index ["product_id"], name: "index_profiles_on_product_id"
  end

end
