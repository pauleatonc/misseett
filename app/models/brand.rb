class Brand < ApplicationRecord
  has_one_attached :logo
  belongs_to :city
  belongs_to :user, optional: true
  has_many :products
  resourcify
end
