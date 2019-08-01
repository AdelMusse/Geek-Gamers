class GamesController < ApplicationController
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

  def create
    byebug
    @game = Game.create(game_params) 
    @game.use_id =session[:id]
      @game.save 
        redirect_to users_home_path
  end

  private

 def game_params
  params.require(:game).permit(:game_name,:image, :description,:price) 
end
​
end
