class CreateHoursNeededs < ActiveRecord::Migration
  def change
    create_table :hours_neededs do |t|
      t.integer :professor_id
      t.integer :hoursneeded

      t.timestamps
    end
  end
end
