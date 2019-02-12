class CreateBookProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :book_products do |t|
      t.integer :quantity
      t.integer :buyer_id
      t.integer :product_id
      t.date    :start_date
      t.date    :end_date

      t.timestamps
    end
    add_index :book_products, :buyer_id
    add_index :book_products, :product_id
  end
end
