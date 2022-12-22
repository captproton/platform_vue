class Team < ApplicationRecord
  belongs_to :user

  has_many :sites, dependent: :destroy
  has_many :team_memberships, dependent: :destroy
  has_many :users, through: :team_memberships
  has_many :team_members, through: :team_memberships, source: :users
  # has_many :alias_name, through: :model_name, source: :initial_name

  accepts_nested_attributes_for :users

  def subscribers
    users
  end

  def owner
    user
  end

  def add_subscriber(user)
    users << user
  end
end
