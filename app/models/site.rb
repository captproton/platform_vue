class Site < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :pages

  accepts_nested_attributes_for :team

  def owner
    user
  end
end
