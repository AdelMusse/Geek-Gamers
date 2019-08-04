class GamesController < ApplicationController
  before_action :current_game, only: [:show, :edit, :update, :destroy]
  
  def index
    @game = Game.all
  end

  def show
 
  end
  
  def new
    @game = Game.new
  end
  
  def edit
    
  end

  def update
    @game.update(game_params)

    redirect_to game_path(@game)
  end

  def destroy
    @game.destroy

    redirect_to games_path
  end

  def create
    buybug
    @game = Game.create(game_params) 
    @game.user_id =session[:id]
    @game.save
    redirect_to games_path(@game)
  end

  def current_game
    @game = Game.find(params[:id])
  end

  private

 def game_params
  params.require(:game).permit(:game_name,:picture, :description,:price)
  end
end
