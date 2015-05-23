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

ActiveRecord::Schema.define(version: 20150523053617) do

  create_table "attributes", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "accent"
    t.integer  "book_needed"
    t.integer  "clarity"
    t.integer  "curves_course_grade"
    t.integer  "curves_test_grade"
    t.integer  "enthusiasm"
    t.integer  "exam_partial_cred"
    t.integer  "extra_credit"
    t.integer  "gender"
    t.integer  "helpfulness"
    t.integer  "hours_needed"
    t.integer  "hw_credit"
    t.integer  "hw_difficulty"
    t.integer  "likeability"
    t.integer  "patience"
    t.integer  "study_guide"
    t.integer  "test_difficulty"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "professor_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "department",   limit: 255
    t.string   "subject",      limit: 255
    t.string   "course",       limit: 255
    t.integer  "section"
    t.integer  "professor_id"
    t.integer  "a"
    t.integer  "b"
    t.integer  "c"
    t.integer  "d"
    t.integer  "f"
    t.integer  "w"
    t.integer  "total"
    t.string   "semester",     limit: 255
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
