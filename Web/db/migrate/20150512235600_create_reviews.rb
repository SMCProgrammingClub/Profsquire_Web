class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.boolean :gender
      t.integer :accent
      t.integer :enthusiasm
      t.integer :clarity
      t.integer :helpfulness
      t.integer :likeability
      t.integer :patience
      t.integer :homework_difficulty
      t.boolean :homework_credit
      t.integer :test_difficulty
      t.boolean :study_guides
      t.integer :study_guide_helpfulness
      t.integer :hours_per_week
      t.boolean :extra_credit
      t.boolean :partial_credit_on_exams
      t.boolean :curved_course_grade
      t.boolean :curved_test_grade
      t.boolean :book_needed

      t.timestamps
    end
  end
end
