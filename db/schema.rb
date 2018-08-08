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

ActiveRecord::Schema.define(version: 2018_08_08_221901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applies", force: :cascade do |t|
    t.bigint "band_id"
    t.bigint "gig_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_applies_on_band_id"
    t.index ["gig_id"], name: "index_applies_on_gig_id"
  end

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "photo"
    t.integer "minimum_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_bands_on_user_id"
  end

  create_table "bars", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "photo"
    t.index ["user_id"], name: "index_bars_on_user_id"
  end

  create_table "gig_tags", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "gig_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gig_id"], name: "index_gig_tags_on_gig_id"
    t.index ["tag_id"], name: "index_gig_tags_on_tag_id"
  end

  create_table "gigs", force: :cascade do |t|
    t.datetime "start_date"
    t.text "description"
    t.bigint "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cache"
    t.string "title", default: "Gig"
    t.datetime "end_date"
    t.index ["bar_id"], name: "index_gigs_on_bar_id"
  end

  create_table "my_tags", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_my_tags_on_band_id"
    t.index ["tag_id"], name: "index_my_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applies", "bands"
  add_foreign_key "applies", "gigs"
  add_foreign_key "bands", "users"
  add_foreign_key "bars", "users"
  add_foreign_key "gig_tags", "gigs"
  add_foreign_key "gig_tags", "tags"
  add_foreign_key "gigs", "bars"
  add_foreign_key "my_tags", "bands"
  add_foreign_key "my_tags", "tags"
end
