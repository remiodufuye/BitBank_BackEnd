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

ActiveRecord::Schema.define(version: 2020_01_28_223556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "currencies", force: :cascade do |t|
    t.integer "currency_id"
    t.string "website"
    t.string "technical_doc"
    t.string "twitter"
    t.string "reddit"
    t.string "message_board"
    t.string "coin_market_cap_explorer"
    t.string "blockchain_info_explorer"
    t.string "source_code"
    t.string "logo"
    t.string "name"
    t.string "symbol"
    t.string "slug"
    t.string "description"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.integer "user_id"
    t.integer "currency_id"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "profile_photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watchitems", force: :cascade do |t|
    t.integer "user_id"
    t.integer "currency_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
