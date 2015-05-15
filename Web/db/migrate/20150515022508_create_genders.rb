class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.integer :professor_id
      t.boolean :gender

      t.timestamps
    end
  end
end
