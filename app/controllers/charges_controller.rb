class ChargesController < ApplicationController
  def new
    # Set your secret key: remember to change this to your live secret key in production
# See your keys here: https://dashboard.stripe.com/account/apikeys
# byebug
game=Game.find(params[:game][:game_id])
# byebug
Stripe.api_key = Rails.application.credentials.secret_key
@session = Stripe::Checkout::Session.create(
  payment_method_types: ['card'],
  line_items: [{
    name: game.game_name,
    description: game.description,
    amount: game.price * 100,
    currency: 'myr',
    quantity: 1,
  }],
  success_url: payment_url(game.id),
  cancel_url: 'https://example.com/cancel',
)
# byebug
  end

  def create

  end
end
