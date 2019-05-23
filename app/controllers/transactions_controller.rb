class TransactionsController < ApplicationController

  def buy
    @pokemon = Pokemon.find(params[:pokemon_id])
    @transaction = Transaction.new
    @transaction.user = current_user
    @transaction.pokemon = @pokemon
    @transaction.save

    @pokemon.user = current_user
    @pokemon.onsale = false
    @pokemon.save

    @wishlists = current_user.wishlists
    @wishlist = @wishlists.select { |wishlist| wishlist.pokemon == @pokemon }
    @wishlist.first.destroy

    redirect_to request.referrer
  end

  def put_on_sale
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokemon.onsale = true
    @pokemon.save

    redirect_to request.referrer
  end

end
