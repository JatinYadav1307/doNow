# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151122180713) do

  create_table "habits", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.integer  "streak"
    t.integer  "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "habits", ["user_id"], name: "index_habits_on_user_id"

  create_table "habits_tags", id: false, force: :cascade do |t|
    t.integer "habit_id"
    t.integer "tag_id"
  end

  add_index "habits_tags", ["habit_id"], name: "index_habits_tags_on_habit_id"
  add_index "habits_tags", ["tag_id"], name: "index_habits_tags_on_tag_id"

  create_table "notes", force: :cascade do |t|
    t.string   "title"
    t.text     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "notes", ["user_id"], name: "index_notes_on_user_id"

  create_table "notes_tags", id: false, force: :cascade do |t|
    t.integer "note_id"
    t.integer "tag_id"
  end

  add_index "notes_tags", ["note_id"], name: "index_notes_tags_on_note_id"
  add_index "notes_tags", ["tag_id"], name: "index_notes_tags_on_tag_id"

  create_table "records", force: :cascade do |t|
    t.integer  "health"
    t.integer  "experience"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "records", ["user_id"], name: "index_records_on_user_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "tags", ["user_id"], name: "index_tags_on_user_id"

  create_table "tags_todos", id: false, force: :cascade do |t|
    t.integer "tag_id"
    t.integer "todo_id"
  end

  add_index "tags_todos", ["tag_id"], name: "index_tags_todos_on_tag_id"
  add_index "tags_todos", ["todo_id"], name: "index_tags_todos_on_todo_id"

  create_table "tags_trials", id: false, force: :cascade do |t|
    t.integer "tag_id"
    t.integer "trial_id"
  end

  add_index "tags_trials", ["tag_id"], name: "index_tags_trials_on_tag_id"
  add_index "tags_trials", ["trial_id"], name: "index_tags_trials_on_trial_id"

  create_table "todos", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.date     "duedate"
    t.integer  "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "todos", ["user_id"], name: "index_todos_on_user_id"

  create_table "trials", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.integer  "diff"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "streak"
    t.date     "date"
    t.integer  "number"
  end

  add_index "trials", ["user_id"], name: "index_trials_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "authentication_token"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
