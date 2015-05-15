class Addcolumn < ActiveRecord::Migration
  def change
    add_column :orders, :customer_id, :integer
    add_index 'orders', ['customer_id'], :name => 'index_customer_id'
  end
end
