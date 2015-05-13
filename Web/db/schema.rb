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

ActiveRecord::Schema.define(version: 20150513001114) do

  create_table "courses", force: true do |t|
    t.integer  "a"
    t.integer  "b"
    t.integer  "c"
    t.integer  "d"
    t.integer  "f"
    t.integer  "w"
    t.integer  "total"
    t.text     "department"
    t.text     "subject"
    t.text     "name"
    t.integer  "section"
    t.text     "semester"
    t.text     "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.boolean  "gender"
    t.integer  "accent"
    t.integer  "enthusiasm"
    t.integer  "clarity"
    t.integer  "helpfulness"
    t.integer  "likeability"
    t.integer  "patience"
    t.integer  "homework_difficulty"
    t.boolean  "homework_credit"
    t.integer  "test_difficulty"
    t.boolean  "study_guides"
    t.integer  "study_guide_helpfulness"
    t.integer  "hours_per_week"
    t.boolean  "extra_credit"
    t.boolean  "partial_credit_on_exams"
    t.boolean  "curved_course_grade"
    t.boolean  "curved_test_grade"
    t.boolean  "book_needed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
