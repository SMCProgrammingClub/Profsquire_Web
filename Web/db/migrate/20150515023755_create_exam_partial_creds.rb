class CreateExamPartialCreds < ActiveRecord::Migration
  def change
    create_table :exam_partial_creds do |t|
      t.integer :professor_id
      t.boolean :exam_partial_cred

      t.timestamps
    end
  end
end
