class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string  :name
      t.integer :quantity
      t.decimal :unit_price,  precision: 5, scale: 2

      t.timestamps
    end
  end
end
