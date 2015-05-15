class CreateHelpfulnesses < ActiveRecord::Migration
  def change
    create_table :helpfulnesses do |t|
      t.integer :professor_id
      t.integer :helpfulness

      t.timestamps
    end
  end
end
