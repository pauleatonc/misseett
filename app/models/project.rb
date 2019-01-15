class Project < ApplicationRecord
  has_many :specifications
  has_many :products, through: :specifications
  belongs_to :user
  belongs_to :project_type
  belongs_to :project_traffic
  belongs_to :city
  has_many :events
  resourcify

  def title
    name
  end

  def date
    created_at.strftime("%Y-%m-%d")
  end

  def update
    updated_at.strftime("%Y-%m-%d")
  end

  def type
    project_type.category
  end


end
