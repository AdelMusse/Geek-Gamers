class PaymentsController < ApplicationController
  def success

  end

  def cancel
  end
  
  def show
    # byebug
    @game = Game.find(params[:id])
  end

end
