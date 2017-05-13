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

ActiveRecord::Schema.define(version: 20170513170830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "phrasebook_entries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "phrasebook_id"
    t.text "phrase"
    t.text "translation"
    t.string "phrase_language_name"
    t.string "translation_language_name"
    t.index ["phrasebook_id"], name: "index_phrasebook_entries_on_phrasebook_id"
  end

  create_table "phrasebooks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_phrasebooks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.decimal "google_uid"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "google_image"
    t.string "google_name"
  end

end
