class Product < ApplicationRecord
  belongs_to :project_traffic
  belongs_to :project_types
  belongs_to :company
end
