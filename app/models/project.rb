class Project < ApplicationRecord
  belongs_to :user
  belongs_to :project_type
  belongs_to :project_traffic
  belongs_to :city
  has_one :carts
  has_many :products, through: :carts
  has_many :events

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
