class TeamsController < ApplicationController
  def index
    if params[:search]
      @teams = Team.search(params[:search]).page params[:page]
    else
      @teams = Team.order(:name).page params[:page]
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def edit
    @team = Team.find(params[:id])
  end

  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to @team
    else
      render 'new'
    end
  end

  def update
    @team = Team.find(params[:id])

    if @team.update(team_params)
      redirect_to @team
    else
      render 'edit'
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    redirect_to teams_path
  end

  private
    def team_params
      params.require(:team).permit(:name, :stadium, :address, :telephone, :pitch_type)
    end
end
