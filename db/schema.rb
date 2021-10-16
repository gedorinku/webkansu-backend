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

ActiveRecord::Schema.define(version: 2021_10_08_104036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "user_novel_ownership_id", null: false
    t.string "slug", null: false
    t.string "position", null: false
    t.string "title_cache", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_novel_ownership_id"], name: "index_bookmarks_on_user_novel_ownership_id", unique: true
  end

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

  create_table "user_novel_ownerships", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "novel_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id", "novel_id"], name: "index_user_novel_ownerships_on_user_id_and_novel_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "novel_chapters", "novels"
  add_foreign_key "user_novel_ownerships", "novels"
  add_foreign_key "user_novel_ownerships", "users"
end
