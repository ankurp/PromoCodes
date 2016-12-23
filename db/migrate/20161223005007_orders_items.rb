class OrdersItems < ActiveRecord::Migration[5.0]
  def change
    create_join_table :orders, :items
  end
end
