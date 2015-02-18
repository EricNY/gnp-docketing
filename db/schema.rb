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

ActiveRecord::Schema.define(version: 20150216062414) do

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

end
