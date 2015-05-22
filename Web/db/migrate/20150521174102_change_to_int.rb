class ChangeToInt < ActiveRecord::Migration
  def change
    change_column(:book_neededs,:book_needed,:integer)
    change_column(:curves_course_grades,:curves_course_grade,:integer)
    change_column(:curves_test_grades,:curves_test_grade,:integer)
    change_column(:exam_partial_creds,:exam_partial_cred,:integer)
    change_column(:extra_credits,:extracredit,:integer)
    change_column(:genders,:gender,:integer)
    change_column(:hw_credits,:hwcredit,:integer)
    change_column(:study_guides,:studyguide,:integer)
  end
end
