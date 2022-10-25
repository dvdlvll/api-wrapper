class GamesController < ApplicationController
  include Rawg

  def index
    @games = Rawg::Client.games
    render json: @games
  end

  def upcoming
    @games = Rawg::Client.upcoming
    render json: @games
  end

  def pc
    @games = Rawg::Client.pc
    render json: @games
  end

  def twok1
    @games = Rawg::Client.twok1
    render json: @games
  end

  def ea
    @games = Rawg::Client.ea
    render json: @games
  end

end
