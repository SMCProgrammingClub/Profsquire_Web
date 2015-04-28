class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.boolean :gender
      t.integer :accent
      t.integer :enthusiasm
      t.integer :clarity
      t.integer :helpfulness
      t.integer :likeability
      t.integer :patience
      t.integer :hwDifficulty
      t.boolean :givesHwCredit
      t.integer :testDifficulty
      t.boolean :givesStudyGuides
      t.boolean :isStudyGuideHelpful
      t.integer :hoursPerWeek
      t.boolean :givesExtraCredit
      t.boolean :partialCredExams
      t.boolean :curvesCourseGrade
      t.boolean :curvesTestGrade
      t.boolean :needBook
      t.text :comments

      t.timestamps
    end
  end
end
