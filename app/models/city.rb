class City < ApplicationRecord
  belongs_to :state
  has_many :users
  has_many :companies
  accepts_nested_attributes_for :users
  accepts_nested_attributes_for :companies
end
