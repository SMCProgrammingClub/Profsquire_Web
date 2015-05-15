class TestFor2 < ActiveRecord::Migration
  def change
    remove_column :orders, :customer_id
  end
end
