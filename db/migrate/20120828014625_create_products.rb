class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title
      t.decimal :price, :precision => 8, :scale => 2
      t.text :description
      t.string :img_url
      t.integer :stock, :default => 0
      change_column :order_items, :quantity, :integer, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :products
    remove_column :products, :stock
  end
end
