class CreateCurvesCourseGrades < ActiveRecord::Migration
  def change
    create_table :curves_course_grades do |t|
      t.integer :professor_id
      t.boolean :curves_course_grade

      t.timestamps
    end
  end
end
