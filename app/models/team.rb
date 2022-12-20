class Team < ApplicationRecord
  belongs_to :user

  has_many :sites, dependent: :destroy
  has_many :team_memberships, dependent: :destroy
  has_many :users, through: :team_memberships

	accepts_nested_attributes_for :users, allow_destroy: true

  def subscribers
    self.users
  end

  def owner
    self.user
  end

  def add_subscriber(user)
    self.users       << user

  end
end
