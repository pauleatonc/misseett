class Product < ApplicationRecord
  has_many :specifications
  has_many :projects, through: :specifications
  belongs_to :project_traffic
  belongs_to :project_type
  belongs_to :product_type
  belongs_to :brand
  has_many_attached :images
  resourcify
end
