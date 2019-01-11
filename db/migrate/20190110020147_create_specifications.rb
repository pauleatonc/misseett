class CreateSpecifications < ActiveRecord::Migration[5.2]
  def change
    create_table :specifications do |t|
      t.references :project, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
