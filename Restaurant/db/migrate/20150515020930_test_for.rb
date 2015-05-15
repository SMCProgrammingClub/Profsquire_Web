class TestFor < ActiveRecord::Migration
  def change
    add_foreign_key :Order, :Customer
  end
end
