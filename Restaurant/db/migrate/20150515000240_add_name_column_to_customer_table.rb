class AddNameColumnToCustomerTable < ActiveRecord::Migration
  def change
    add_column :customers, :name, :string
    add_column :orders, :customer_order, :string
  end
end
