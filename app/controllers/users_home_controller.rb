class UsersHomeController < ApplicationController
  def users_home
    @games = Game.all
  end
  def user_posts
    @games = Game.all
  end
end
