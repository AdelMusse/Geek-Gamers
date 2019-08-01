class UsersHomeController < ApplicationController
  def users_home
    @game = Game.all
  end
end
