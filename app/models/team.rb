class Team < ApplicationRecord
  belongs_to :user

  has_many :team_memberships
  has_many :users, through: :team_memberships

	accepts_nested_attributes_for :users, allow_destroy: true

end
