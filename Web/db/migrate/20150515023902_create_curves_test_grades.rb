class CreateCurvesTestGrades < ActiveRecord::Migration
  def change
    create_table :curves_test_grades do |t|
      t.integer :professor_id
      t.boolean :curves_test_grade

      t.timestamps
    end
  end
end
