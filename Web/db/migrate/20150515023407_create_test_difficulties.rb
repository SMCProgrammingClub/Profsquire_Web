class CreateTestDifficulties < ActiveRecord::Migration
  def change
    create_table :test_difficulties do |t|
      t.integer :professor_id
      t.integer :testdifficulty

      t.timestamps
    end
  end
end
