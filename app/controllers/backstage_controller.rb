class BackstageController < ApplicationController
  def index
  	if user_signed_in?
  		@owned_teams = current_user.owned_teams
  		@sites = current_user.sites
  	end

  	# @activities = PublicActivity::Activity.order("created_at DESC").where(owner_id: current_user, owner_type: "User")    
    # @teams = Team.all

  end

end
