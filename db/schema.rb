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

ActiveRecord::Schema.define(version: 20161226200211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "labor_line_items", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "log_id",                                               null: false
    t.decimal  "amount",      precision: 20, scale: 2, default: "0.0", null: false
    t.text     "description"
    t.datetime "deleted_at"
  end

  create_table "logs", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.boolean  "summarize",  default: false
  end

  create_table "records", force: :cascade do |t|
    t.string   "title"
    t.date     "date"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tire_line_items", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "units",                                 default: 0,     null: false
    t.text     "tire_type",                             default: "",    null: false
    t.decimal  "unit_amount",  precision: 20, scale: 2, default: "0.0", null: false
    t.integer  "log_id",                                                null: false
    t.datetime "deleted_at"
    t.integer  "tire_size_id"
  end

  create_table "tire_sizes", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "size",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin",        default: false
    t.boolean  "is_super",        default: false
  end

end
