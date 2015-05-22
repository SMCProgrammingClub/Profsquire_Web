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

ActiveRecord::Schema.define(version: 20150521235113) do

  create_table "accents", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "accent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "book_neededs", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "book_needed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clarities", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "clarity"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "curves_course_grades", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "curves_course_grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "curves_test_grades", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "curves_test_grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enthusiasms", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "enthusiasm"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exam_partial_creds", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "exam_partial_cred"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "extra_credits", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "extracredit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "helpfulnesses", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "helpfulness"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hours_neededs", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "hoursneeded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hw_credits", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "hwcredit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hw_difficulties", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "hwdifficulty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likeabilities", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "likeability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patiences", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "patience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "study_guides", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "studyguide"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_difficulties", force: :cascade do |t|
    t.integer  "professor_id"
    t.integer  "testdifficulty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
