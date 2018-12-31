class Product < ApplicationRecord
  belongs_to :project_traffic
  belongs_to :project_type
  belongs_to :product_type
  belongs_to :company
  has_many_attached :images
  has_many :projects
  has_many :users, through: :projects
end
