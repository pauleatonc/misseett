class RemoveGenderFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :gender_id, :string
  end
end
