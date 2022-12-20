class Site < ApplicationRecord
  belongs_to :user
  belongs_to :team

  accepts_nested_attributes_for :team

  def owner
    self.user
  end
end
