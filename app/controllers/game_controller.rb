class GameController < ApplicationController
  def create
    @game = Game(_game_params).new
    @game.status = Game::Status::Open
    @game.save
  end

  def show
    # show past game

  end

  def save
    @game = Game.find(:id => _game_params[:id])
    @game.status = Game::Status::Closed
    @game.score_one = _game_params[:score_one]
    @game.score_two = _game_params[:score_two]
    @game.winner = _game_params[:winner]
    @game.save
  end


  def _game_params
    params.require(:game).permit(:user_one, :user_two, :score_one, :score_two, :winner, :id)
  end
end
