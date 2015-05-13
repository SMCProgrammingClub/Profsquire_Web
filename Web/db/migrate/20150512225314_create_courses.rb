class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :a
      t.integer :bra
      t.integer :c
      t.integer :d
      t.integer :f
      t.integer :w
      t.integer :total
      t.text :department
      t.text :subject
      t.text :name
      t.integer :section
      t.text :semester
      t.text :year

      t.timestamps
    end
  end
end
