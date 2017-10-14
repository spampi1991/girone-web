class RankingsController < ApplicationController
  before_action :set_ranking, only: [:show, :edit, :update, :destroy]

  def index
    if params[:season_id]
      @rankings = Ranking.of_season(params[:season_id])
    else
      @rankings = Ranking.order(points: :desc, goals_difference: :desc)
    end
  end

  def show
  end

  def new
    @ranking = Ranking.new
  end

  def edit
  end

  def create
    @ranking = Ranking.new(ranking_params)

    respond_to do |format|
      if @ranking.save
        format.html { redirect_to @ranking, notice: 'Ranking was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @ranking.update(ranking_params)
        format.html { redirect_to @ranking, notice: 'Ranking was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @ranking.destroy
    respond_to do |format|
      format.html { redirect_to rankings_url, notice: 'Ranking was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ranking
      @ranking = Ranking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ranking_params
      params.require(:ranking).permit(:season_id, :team_id, :games, :victories, :draws, :defeats, :goals_scored, :goals_suffered, :points, :goals_difference)
    end
end
