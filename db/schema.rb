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

ActiveRecord::Schema.define(version: 20151203062055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "logs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "records", force: true do |t|
    t.string   "title"
    t.date     "date"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tire_line_items", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "units",                                 null: false
    t.decimal  "total_amount", precision: 20, scale: 2, null: false
    t.text     "tire_type",                             null: false
    t.text     "unit_amount",                           null: false
    t.integer  "log_id",                                null: false
    t.datetime "deleted_at"
  end

  create_table "tire_sizes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "size",              null: false
    t.integer  "tire_line_item_id", null: false
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
