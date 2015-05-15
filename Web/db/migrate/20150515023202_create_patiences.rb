class CreatePatiences < ActiveRecord::Migration
  def change
    create_table :patiences do |t|
      t.integer :professor_id
      t.integer :patience

      t.timestamps
    end
  end
end
