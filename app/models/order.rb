class Order < ApplicationRecord
  belongs_to :user
  belongs_to :brand_plan
  belongs_to :billing, optional: true
  scope :notpayed, -> { where(payed: false) }
  scope :payedtrue, -> { where(payed: true) }

  def self.get_total
    where(nil).pluck('price * quantity').sum
  end
end
