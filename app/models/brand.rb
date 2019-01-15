class Brand < ApplicationRecord
  belongs_to :city
  belongs_to :user, optional: true
  has_many :products
  resourcify
end
