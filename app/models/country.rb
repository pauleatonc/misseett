class Country < ApplicationRecord
  belongs_to :continent
  has_many :states
  has_many :cities, through: :states
end
