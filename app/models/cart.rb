class Cart < ApplicationRecord
  belongs_to :projects
  belongs_to :products
  has_many :users, through: :projects
end
