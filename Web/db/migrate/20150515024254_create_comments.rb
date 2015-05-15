class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :professor_id
      t.integer :comment

      t.timestamps
    end
  end
end
