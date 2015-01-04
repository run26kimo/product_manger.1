class CreateOwnProducts < ActiveRecord::Migration
  def change
    create_table :own_products do |t|
      t.references :product, index: true
      t.references :user, index: true
      t.integer :count
      t.string :memo

      t.timestamps
    end
  end
end
