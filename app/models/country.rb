class Country < ApplicationRecord
  belongs_to :continent
  has_many :states
  has_many :cities, through: :states
  accepts_nested_attributes_for :states
end
