class CreateAccents < ActiveRecord::Migration
  def change
    create_table :accents do |t|
      t.integer :professor_id
      t.integer :accent

      t.timestamps
    end
  end
end
