class UsersHomeController < ApplicationController
  def users_home
    @games = Game.all
  end

  def user_games
    user = User.find(session[:id])
    @games = user.games 
  end

  def user_posts
    user=User.find(session[:id])
    @games=user.games
  end

  # def user_games
  #   byebug
  #   @user = User.find(params[:user_id])
  #   @game = @user.games
   
  #   #render plain: {posts: @posts.inspect, user: @user.inspect} 
  #  end

end
