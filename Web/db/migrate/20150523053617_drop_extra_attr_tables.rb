class DropExtraAttrTables < ActiveRecord::Migration
  def change
    drop_table(:accents)
    drop_table(:book_neededs)
    drop_table(:clarities)
    drop_table(:curves_course_grades)
    drop_table(:curves_test_grades)
    drop_table(:enthusiasms)
    drop_table(:exam_partial_creds)
    drop_table(:extra_credits)
    drop_table(:genders)
    drop_table(:helpfulnesses)
    drop_table(:hours_neededs)
    drop_table(:hw_credits)
    drop_table(:hw_difficulties)
    drop_table(:likeabilities)
    drop_table(:patiences)
    drop_table(:study_guides)
    drop_table(:test_difficulties)
  end
end
