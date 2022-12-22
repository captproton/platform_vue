class TeamsController < ApplicationController
  before_action :set_team, only: %i[ show edit update destroy ]
  before_action :authenticate_user! , only: %i[ show edit update destroy ]
  # GET /teams or /teams.json
  def index
    @teams = Team.all.order("created_at DESC")  
    @teams_owned_by_current_user = current_user.owned_teams
    @teams_including_current_user = current_user.teams

    @owned_sites = Site.where(user_id: current_user.id)
end

  # GET /teams/1 or /teams/1.json
  def show
  end

  # GET /teams/new
  def new
    @team = current_user.teams.new
    @team.users.build
    # @user = current_user

    # demo code
    # @project = Project.new
    # @project.tasks.build

  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams or /teams.json
  def create
    # demo code
    # @project = Project.new(project_params)

    # establish team
    @team             = current_user.teams.new(team_params)


    # establish team owner
    @team.user_id        = current_user.id
    # current_user.teams = @team

    # make the owner also a member of the team
    @team_membership  = @team.team_memberships.build(user: current_user)
    # @team.add_subscriber(current_user)


    respond_to do |format|
      if @team.save
        format.html { redirect_to backstage_index_path, notice: "Team was successfully created." }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1 or /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to team_url(@team), notice: "Team was successfully updated." }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1 or /teams/1.json
  def destroy
    @team.destroy

    respond_to do |format|
      format.html { redirect_to backstage_index_path, notice: "Team was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def user_field
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      # example code 
      # params.require(:project).permit(:name, tasks_attributes: [:id, :name])

      params.require(:team).permit(:name, users_attributes: [:id, :name, :email, :_destroy])
    end
end
