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

ActiveRecord::Schema.define(version: 2021_10_05_123916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "novel_chapters", force: :cascade do |t|
    t.string "title", null: false
    t.text "content", null: false
    t.bigint "novel_id", null: false
    t.datetime "crawled_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["novel_id"], name: "index_novel_chapters_on_novel_id"
  end

  create_table "novels", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "provider", null: false
    t.string "title", null: false
    t.datetime "crawled_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug", "provider"], name: "index_novels_on_slug_and_provider", unique: true
  end

  add_foreign_key "novel_chapters", "novels"
end
