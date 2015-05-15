class CreateHwDifficulties < ActiveRecord::Migration
  def change
    create_table :hw_difficulties do |t|
      t.integer :professor_id
      t.integer :hwdifficulty

      t.timestamps
    end
  end
end
