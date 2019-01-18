class Brand < ApplicationRecord
  has_many_attached :images
  has_one_attached :logo
  belongs_to :city
  belongs_to :user, optional: true
  has_many :products
  resourcify
end
