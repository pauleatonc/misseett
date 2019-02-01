class AddParamsToBrandPlan < ActiveRecord::Migration[5.2]
  def change
    add_column :brand_plans, :duration, :integer
    add_column :brand_plans, :brands, :integer
    add_column :brand_plans, :products, :integer
  end
end
