class UsersHomeController < ApplicationController
  def users_home
    @games = Game.all
  end
  def user_posts
    user=User.find(session[:id])
    @games=user.games
  end
end
