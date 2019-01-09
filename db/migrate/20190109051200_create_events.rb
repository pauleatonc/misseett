class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.date :start
      t.date :end
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
