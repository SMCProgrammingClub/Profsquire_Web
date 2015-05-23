class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :department
      t.string :subject
      t.string :course
      t.integer :section
      t.integer :professor_id
      t.integer :a
      t.integer :b
      t.integer :c
      t.integer :d
      t.integer :f
      t.integer :w
      t.integer :total
      t.string :semester
      t.integer :year

      t.timestamps
    end
  end
end
