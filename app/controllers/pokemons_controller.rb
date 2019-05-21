class PokemonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @pokemons = Pokemon.all
    @pokemons = policy_scope(Pokemon)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
  end

  def new
    # @user = User.find(params[:user_id])
    @pokemon = Pokemon.new
    authorize @pokemon
  end

  def create
    @user = User.find(params[:user_id])
    @pokemon = pokemon.new(poke_params)
    @pokemon.user = @user
    authorize @pokemon
    @pokemon.save

    redirect_to root_path
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
  end

  def update
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
    if @pokemon.update(poke_params)
      redirect_to @pokemon
    else
      render :edit
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
    @pokemon.destroy

    redirect_to pokemons_path, notice: "You just deleted a Pokemon from your Bowl"
  end

  private

  def poke_params
    params.require(:pokemon).permit(:name, :category, :level, :price, :photo)
  end
end
