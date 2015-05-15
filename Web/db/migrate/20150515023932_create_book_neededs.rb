class CreateBookNeededs < ActiveRecord::Migration
  def change
    create_table :book_neededs do |t|
      t.integer :professor_id
      t.boolean :book_needed

      t.timestamps
    end
  end
end
