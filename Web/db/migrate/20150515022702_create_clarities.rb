class CreateClarities < ActiveRecord::Migration
  def change
    create_table :clarities do |t|
      t.integer :professor_id
      t.integer :clarity

      t.timestamps
    end
  end
end
