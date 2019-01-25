class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.boolean :payed, default: false
      t.references :user, foreign_key: true
      t.references :brand_plan, foreign_key: true
      t.integer :quantity, default: 1
      t.integer :price
      t.references :billing, foreign_key: true

      t.timestamps
    end
  end
end
