class GamesController < ApplicationController
  before_action :current_game, only: [:show, :edit, :update, :destroy]
  before_action :resource_owner, only: [:edit, :update, :destroy]
  def index
  #   unless params[:game].nil?
  #     @Games=Game.where('pickup_date > ? OR  return_date < ? OR reserved = ?', params[:game][:return_date],params[:game][:pickup_date],"false")
  # else
  search = params[:term].present? ? params[:term] :nil
  @games = if search
      Game.search(search)
    else
      @games=Game.all.order("created_at DESC")
    end
  end

  def show
    @game = Game.find(params[:id])
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
    @game.reindex
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

  def resource_owner
    unless @game.user_id == current_user.id
     flash[:notice] = 'Access denied as you are not owner of this Job'
     redirect_to games_path
    end
  end
  
end
