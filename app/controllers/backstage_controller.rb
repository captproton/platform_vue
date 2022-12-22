class BackstageController < ApplicationController
  def index
    if user_signed_in?
      @owned_teams = current_user.owned_teams
      @owned_sites = current_user.sites
      @sites = Site.all
	  @current_user_team_memberships = current_user.team_memberships
    end

    # @activities = PublicActivity::Activity.order("created_at DESC").where(owner_id: current_user, owner_type: "User")
    # @teams = Team.all
  end
end
