class CreateEnthusiasms < ActiveRecord::Migration
  def change
    create_table :enthusiasms do |t|
      t.integer :professor_id
      t.integer :enthusiasm

      t.timestamps
    end
  end
end
