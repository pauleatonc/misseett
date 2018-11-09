class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.string :office
      t.references :project_type, foreign_key: true
      t.references :project_traffic, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
