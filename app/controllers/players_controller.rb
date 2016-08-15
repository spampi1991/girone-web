class PlayersController < ApplicationController
  def index
    @players = Player.order(:role).page params[:page]
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def edit
    @player = Player.find(params[:id])
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to player_url(@player)
    else
      render 'new'
    end
  end

  def update
    @player = Player.find(params[:id])

    if @player.update(player_params)
      redirect_to player_path(@player)
    else
      render 'edit'
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    redirect_to players_path
  end

  private
    def player_params
      params.require(:player).permit(:name, :surname, :birthday, :role, :shirt_number, :preferred_foot, :team_id)
    end
end

