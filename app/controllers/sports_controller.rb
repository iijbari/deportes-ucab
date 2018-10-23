class SportsController < ApplicationController
  before_action :set_sport, only: [:show]
  before_action :tournament_search, only: [:show]
  before_action :authenticate_user!

  def show
  end

  def index
    @sports = Sport.all
  end

  private

    def sport_params
      params.require(:sport).permit(:name, :tournament_id)
    end

    def set_sport
      @sport = Sport.find(params[:id])
    end

    def tournament_search
      @tournament = Tournament.where("sport_id = ?", params[:id])
    end
end
