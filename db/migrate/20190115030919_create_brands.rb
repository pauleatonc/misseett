class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :description
      t.string :contact
      t.string :email
      t.string :phone
      t.string :address
      t.references :city, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
