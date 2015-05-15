class CreateExtraCredits < ActiveRecord::Migration
  def change
    create_table :extra_credits do |t|
      t.integer :professor_id
      t.boolean :extracredit

      t.timestamps
    end
  end
end
