class DeleteOldAttrTable < ActiveRecord::Migration
  def change
    drop_table(:attributes)
  end
end
