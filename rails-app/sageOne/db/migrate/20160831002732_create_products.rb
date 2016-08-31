class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :category1
      t.string :category2
      t.text :description
      t.integer :indentification
      t.decimal :cost
      t.decimal :sale_price1
      t.text :observation
      t.integer :provider
      t.integer :stock
      t.integer :bar_code
      t.decimal :sale_price2
      t.decimal :sale_price3
      t.integer :minimum_stock
      t.integer :max_stock
      t.integer :stock_purchase
      t.integer :sale_unit
      t.integer :ncm
      t.decimal :weight
      t.decimal :size
      t.integer :inactive
      t.integer :product_type
      t.string :category3
      t.string :category4
      t.integer :composition
      t.integer :feedstock
      t.integer :exp_material
      t.integer :to_sale
      t.string :currency
      t.timestamps null: false
    end
    
    add_index :products, :bar_code
    add_index :products, :provider
  end
end
