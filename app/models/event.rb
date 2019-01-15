class Event < ApplicationRecord
  belongs_to :project
  has_one :user, through: :projects
  resourcify
  def editable?
    Date.today < start ? true : false
  end

end
