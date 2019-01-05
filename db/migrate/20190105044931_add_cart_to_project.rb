class AddCartToProject < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :cart, foreign_key: true
  end
end
