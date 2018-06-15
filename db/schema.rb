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

ActiveRecord::Schema.define(version: 2018_06_11_150225) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "comment_for_contest_works", force: :cascade do |t|
    t.integer "user_id"
    t.integer "contest_work_id"
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contest_work_id"], name: "index_comment_for_contest_works_on_contest_work_id"
    t.index ["user_id"], name: "index_comment_for_contest_works_on_user_id"
  end

  create_table "comment_for_works", force: :cascade do |t|
    t.integer "user_id"
    t.integer "work_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comment_for_works_on_user_id"
    t.index ["work_id"], name: "index_comment_for_works_on_work_id"
  end

  create_table "contest_work_items", force: :cascade do |t|
    t.integer "contest_work_id"
    t.text "image"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contest_work_id"], name: "index_contest_work_items_on_contest_work_id"
  end

  create_table "contest_works", force: :cascade do |t|
    t.integer "user_id"
    t.integer "contest_id"
    t.string "title"
    t.text "explanation"
    t.text "image"
    t.boolean "hide_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contest_id"], name: "index_contest_works_on_contest_id"
    t.index ["user_id"], name: "index_contest_works_on_user_id"
  end

  create_table "contests", force: :cascade do |t|
    t.string "name"
    t.text "explanation"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "work_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_likes_on_user_id"
    t.index ["work_id"], name: "index_likes_on_work_id"
  end

  create_table "report_contest_works", force: :cascade do |t|
    t.integer "contest_work_id"
    t.integer "user_id"
    t.text "reason", null: false
    t.boolean "hide_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contest_work_id"], name: "index_report_contest_works_on_contest_work_id"
    t.index ["user_id"], name: "index_report_contest_works_on_user_id"
  end

  create_table "report_works", force: :cascade do |t|
    t.integer "work_id"
    t.integer "user_id"
    t.text "reason"
    t.boolean "hide_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_report_works_on_user_id"
    t.index ["work_id"], name: "index_report_works_on_work_id"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name", null: false
    t.text "introduction"
    t.text "image"
    t.integer "point", default: 0
    t.boolean "massage_allow", default: true
    t.boolean "quit_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "work_genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_items", force: :cascade do |t|
    t.integer "work_id"
    t.text "image"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_id"], name: "index_work_items_on_work_id"
  end

  create_table "works", force: :cascade do |t|
    t.integer "user_id"
    t.integer "work_genre_id"
    t.string "title"
    t.text "explanation"
    t.text "image"
    t.boolean "album_allow_flg", default: true
    t.boolean "hide_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_works_on_user_id"
    t.index ["work_genre_id"], name: "index_works_on_work_genre_id"
  end

end
