class PokemonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @pokemons = Pokemon.all
    @pokemons = policy_scope(Pokemon)
  end

  def new
    authorize @pokemon
    @user = User.find(params[:user_id])
    @pokemon = Pokemon.new
  end

  def create
    authorize @pokemon
    @user = User.find(params[:user_id])
    @pokemon = pokemon.new(poke_params)
    @pokemon.user = @user
    @pokemon.save

    redirect_to root_path
  end

  def show
    authorize @pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  private

  def poke_params
    params.require(:pokemon).permit(:name, :category, :level, :price)
  end
end
