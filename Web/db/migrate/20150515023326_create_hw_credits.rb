class CreateHwCredits < ActiveRecord::Migration
  def change
    create_table :hw_credits do |t|
      t.integer :professor_id
      t.boolean :hwcredit

      t.timestamps
    end
  end
end
