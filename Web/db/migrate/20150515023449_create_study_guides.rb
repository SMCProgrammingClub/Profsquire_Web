class CreateStudyGuides < ActiveRecord::Migration
  def change
    create_table :study_guides do |t|
      t.integer :professor_id
      t.boolean :studyguide

      t.timestamps
    end
  end
end
