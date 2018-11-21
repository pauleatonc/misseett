class AddCityToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :city, foreign_key: true,  null: false, default: ""
  end
end
