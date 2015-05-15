class Professor < ActiveRecord::Base
  has_many :accents
  has_many :book_neededs
  has_many :clarities
  has_many :comments
  has_many :courses
  has_many :curves_course_grades
  has_many :curves_test_grades
  has_many :enthusiasms
  has_many :exam_partial_creds
  has_many :extra_credits
  has_many :genders
  has_many :helpfulnesses
  has_many :hours_neededs
  has_many :hw_difficulties
  has_many :hw_credits
  has_many :likeabilities
  has_many :patiences
  has_many :study_guides
  has_many :test_difficulties
end


