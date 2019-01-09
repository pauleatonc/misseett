class AddFinishToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :finished, :boolean, default: false
  end
end
