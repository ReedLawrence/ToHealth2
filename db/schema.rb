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

ActiveRecord::Schema.define(version: 20151106221256) do

  create_table "answers", force: :cascade do |t|
    t.integer  "numAnswer",   limit: 4
    t.string   "openAnswer",  limit: 255
    t.integer  "user_id",     limit: 4
    t.integer  "question_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "answers", ["question_id"], name: "question_id", using: :btree
  add_index "answers", ["user_id"], name: "user_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "questionText", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.string   "name",        limit: 255
    t.string   "course",      limit: 255
    t.date     "dueDate"
    t.integer  "estTime",     limit: 4
    t.text     "description", limit: 65535
    t.integer  "priority",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "tasks", ["user_id"], name: "user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "userName",   limit: 255
    t.string   "firstName",  limit: 255
    t.string   "lastName",   limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "answers", "questions", name: "answers_ibfk_2", on_delete: :cascade
  add_foreign_key "answers", "users", name: "answers_ibfk_1", on_delete: :cascade
  add_foreign_key "tasks", "users", name: "tasks_ibfk_1", on_delete: :cascade
end
