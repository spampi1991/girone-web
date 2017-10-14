class HomeController < ApplicationController
  def index
    @next_event = Event.next_event
    @actual_ranking = Ranking.of_season(Season.current).page params[:page]
  end
end
