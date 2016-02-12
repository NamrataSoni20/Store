class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :product_price
      t.integer :product_quantity

      t.timestamps null: false
    end
  end
end
