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
    @game = Game.create(game_params) 
    @game.user_id =session[:id]
      @game.save 
        redirect_to user_posts_path
  end

  private

 def game_params
  params.require(:game).permit(:game_name,:picture, :description,:price) 
end
​
end
