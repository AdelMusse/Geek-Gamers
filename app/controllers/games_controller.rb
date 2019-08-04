class GamesController < ApplicationController
  before_action :current_game, only: [:show, :edit, :update, :destroy]
  
  def index
    @games = Game.all
  end

  def show
 
  end
  
  def new
    @game = Game.new
  end
  
  def edit
    
  end

  def update
    if @game.update(game_params)
      redirect_to games_path
    else
      render :edit
    end
  end

  def destroy
    @game.destroy

    redirect_to games_path
  end

  def create
    @game = Game.create(game_params) 
    @game.user_id =session[:id]
    if@game.save
      redirect_to games_path
    else
      render :new
    end
  end



  private

 def game_params
  params.require(:game).permit(:game_name,:picture, :description,:price)
  end

  def current_game
    @game = Game.find(params[:id])
  end
  
end
