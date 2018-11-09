class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :contact
      t.string :email
      t.integer :phone
      t.string :address_1
      t.string :address_2
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
