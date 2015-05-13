class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :courses, :bra, :b
  end
end