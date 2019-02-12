class CreateProductQuantityBalances < ActiveRecord::Migration[5.2]
  def change
    create_table :product_quantity_balances do |t|
      t.integer :product_id
      t.integer :remaining_products

      t.timestamps
    end
    add_index :product_quantity_balances, :product_id
  end
end
