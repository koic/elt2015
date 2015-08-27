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

ActiveRecord::Schema.define(version: 20150826155828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "exhibits", force: :cascade do |t|
    t.string   "title",                       null: false
    t.text     "description"
    t.string   "type",                        null: false
    t.integer  "user_id",                     null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "votes_count",     default: 0
    t.string   "image_url"
    t.string   "announce_number"
  end

  add_index "exhibits", ["announce_number"], name: "index_exhibits_on_announce_number", unique: true, using: :btree
  add_index "exhibits", ["user_id"], name: "index_exhibits_on_user_id", using: :btree

  create_table "foods", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lightning_talks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nickname",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "provider",   null: false
    t.string   "uid",        null: false
  end

  create_table "vote_settings", force: :cascade do |t|
    t.boolean  "stop",       default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id",               null: false
    t.integer  "exhibit_id",            null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "comment",    limit: 40
  end

  add_foreign_key "exhibits", "users"
end
