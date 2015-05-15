class CreateLikeabilities < ActiveRecord::Migration
  def change
    create_table :likeabilities do |t|
      t.integer :professor_id
      t.integer :likeability

      t.timestamps
    end
  end
end
