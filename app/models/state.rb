class State < ApplicationRecord
  belongs_to :country
  has_one :continent, through: :country
  has_many :cities
  accepts_nested_attributes_for :cities
end
