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

ActiveRecord::Schema.define(version: 20150515024254) do

  create_table "accents", force: true do |t|
    t.integer  "professor_id"
    t.integer  "accent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "book_neededs", force: true do |t|
    t.integer  "professor_id"
    t.boolean  "book_needed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clarities", force: true do |t|
    t.integer  "professor_id"
    t.integer  "clarity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "professor_id"
    t.integer  "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "department"
    t.string   "subject"
    t.string   "course"
    t.integer  "section"
    t.integer  "professor_id"
    t.integer  "a"
    t.integer  "b"
    t.integer  "c"
    t.integer  "d"
    t.integer  "f"
    t.integer  "w"
    t.integer  "total"
    t.string   "semester"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "curves_course_grades", force: true do |t|
    t.integer  "professor_id"
    t.boolean  "curves_course_grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "curves_test_grades", force: true do |t|
    t.integer  "professor_id"
    t.boolean  "curves_test_grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enthusiasms", force: true do |t|
    t.integer  "professor_id"
    t.integer  "enthusiasm"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exam_partial_creds", force: true do |t|
    t.integer  "professor_id"
    t.boolean  "exam_partial_cred"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "extra_credits", force: true do |t|
    t.integer  "professor_id"
    t.boolean  "extracredit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", force: true do |t|
    t.integer  "professor_id"
    t.boolean  "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "helpfulnesses", force: true do |t|
    t.integer  "professor_id"
    t.integer  "helpfulness"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hours_neededs", force: true do |t|
    t.integer  "professor_id"
    t.integer  "hoursneeded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hw_credits", force: true do |t|
    t.integer  "professor_id"
    t.boolean  "hwcredit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hw_difficulties", force: true do |t|
    t.integer  "professor_id"
    t.integer  "hwdifficulty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likeabilities", force: true do |t|
    t.integer  "professor_id"
    t.integer  "likeability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patiences", force: true do |t|
    t.integer  "professor_id"
    t.integer  "patience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "study_guides", force: true do |t|
    t.integer  "professor_id"
    t.boolean  "studyguide"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_difficulties", force: true do |t|
    t.integer  "professor_id"
    t.integer  "testdifficulty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
