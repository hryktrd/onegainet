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

ActiveRecord::Schema.define(version: 20140826124117) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "helpers", force: true do |t|
    t.integer  "category_id"
    t.string   "skill"
    t.string   "tel"
    t.string   "email"
    t.string   "facebook"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "helpers", ["category_id"], name: "index_helpers_on_category_id", using: :btree

  create_table "needs", force: true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.text     "description"
    t.string   "tel"
    t.string   "facebook"
    t.string   "email"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "needs", ["category_id"], name: "index_needs_on_category_id", using: :btree

  create_table "pictures", force: true do |t|
    t.binary   "image",      limit: 16777215
    t.string   "imagetype"
    t.integer  "need_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["need_id"], name: "index_pictures_on_need_id", using: :btree

  create_table "schedules", force: true do |t|
    t.date     "free_date"
    t.integer  "helper_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["helper_id"], name: "index_schedules_on_helper_id", using: :btree

end
