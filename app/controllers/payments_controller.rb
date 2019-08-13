class PaymentsController < ApplicationController
  
  def cancel
  end
  
  def show
    # byebug
    @game = Game.find(params[:id])
  end

end
