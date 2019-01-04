class Cart < ApplicationRecord
  has_and_belongs_to_many :project
  has_and_belongs_to_many :product
  has_many :users, through: :projects
end
