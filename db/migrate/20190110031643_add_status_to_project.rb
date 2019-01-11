class AddStatusToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :status_open, :boolean, default: true
  end
end
