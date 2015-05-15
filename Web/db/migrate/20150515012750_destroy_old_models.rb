class DestroyOldModels < ActiveRecord::Migration
  def change
    drop_table :courses
    drop_table :professors
    drop_table :reviews
  end
end
