class WishlistsController < ApplicationController
  def add_to_wishlist
    @pokemon = Pokemon.find(params[:pokemon_id])
    @wishlist = Wishlist.new
    @wishlist.user = current_user
    @wishlist.pokemon = @pokemon
    @wishlist.save

    redirect_to pokemons_path
  end

  def remove_from_wishlist
    @pokemon = Pokemon.find(params[:pokemon_id])
    @wishlists = current_user.wishlists
    @wishlist = @wishlists.select { |wishlist| wishlist.pokemon == @pokemon }
    @wishlist.first.destroy

    redirect_to dashboard_path
  end
end
