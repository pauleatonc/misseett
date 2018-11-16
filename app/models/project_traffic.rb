class ProjectTraffic < ApplicationRecord
  has_many :projects 
  has_many :products
end
