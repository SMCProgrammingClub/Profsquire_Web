class CreateProfessorAttributes < ActiveRecord::Migration
  def change
    create_table :professor_attributes do |t|

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


      t.timestamps null: false
    end
  end
end
