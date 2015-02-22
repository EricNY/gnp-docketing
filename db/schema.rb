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

ActiveRecord::Schema.define(version: 20150222023119) do

  create_table "copyrights", force: :cascade do |t|
    t.string   "owner"
    t.string   "author"
    t.string   "workType"
    t.string   "title"
    t.date     "publishedDate"
    t.date     "registrationDate"
    t.integer  "registrationNumber"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "patents", force: :cascade do |t|
    t.string   "owner"
    t.text     "natureOfInvention"
    t.string   "country"
    t.date     "filingDate"
    t.date     "issueDate"
    t.integer  "applicationNumber"
    t.integer  "patentNumber"
    t.string   "status"
    t.date     "statusDate"
    t.date     "dueDate"
    t.date     "secondDueDate"
    t.date     "thirdDueDate"
    t.text     "comments"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "trademarks", force: :cascade do |t|
    t.string   "owner"
    t.string   "mark"
    t.string   "country"
    t.string   "ic"
    t.text     "goodsAndServices"
    t.date     "filingDate"
    t.date     "registrationDate"
    t.integer  "applicationNumber"
    t.integer  "registrationNumber"
    t.string   "status"
    t.date     "statusDate"
    t.date     "dueDate"
    t.date     "secondDueDate"
    t.text     "comments"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
