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

ActiveRecord::Schema.define(version: 2020_12_03_094207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "title", null: false
    t.string "author", null: false
    t.string "content"
    t.bigint "trouble_post_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trouble_post_id"], name: "index_comments_on_trouble_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "novel_post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["novel_post_id"], name: "index_likes_on_novel_post_id"
    t.index ["user_id", "novel_post_id"], name: "index_likes_on_user_id_and_novel_post_id", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "novel_posts", force: :cascade do |t|
    t.string "title", null: false
    t.string "author", null: false
    t.string "for_genre"
    t.string "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_novel_posts_on_user_id"
  end

  create_table "trouble_posts", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_trouble_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username", null: false
    t.string "favorite_genre"
    t.string "recomended_one"
    t.string "recomended_one_point"
    t.string "recomended_two"
    t.string "recomended_three"
    t.string "recomended_four"
    t.string "recomended_five"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "trouble_posts"
  add_foreign_key "comments", "users"
  add_foreign_key "likes", "novel_posts"
  add_foreign_key "likes", "users"
  add_foreign_key "novel_posts", "users"
  add_foreign_key "trouble_posts", "users"
end
