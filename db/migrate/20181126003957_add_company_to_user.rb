class AddCompanyToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :company, foreign_key: true, default: ""
  end
end
