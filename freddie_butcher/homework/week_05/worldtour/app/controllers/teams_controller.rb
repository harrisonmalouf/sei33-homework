class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @teams = Team.new
  end

  def create
    team = Team.create team_params
    redirect_to team
  end

  def edit
    @team = Team.find params[:id]
  end

  def update
  team = Team.find params[:id]
  team.update team_params
  redirect_to team
  end

  def show
    @team = Team.find params[:id]
  end

  def destroy
    team = Team.find params[:id]
    team.destroy
    redirect_to teams_path
  end

  private
  def team_params
    params.require(:team).permit(:brand, :model, :year, :team, :image)
  end

end
