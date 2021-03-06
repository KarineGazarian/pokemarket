class PokemonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @pokemons = Pokemon.all
    @pokemons = policy_scope(Pokemon).all
    @wishlists = []
    @pokemons.each do |poke|
      @wishlists << Wishlist.where(pokemon: poke).first if !Wishlist.where(pokemon: poke).first.nil?
    end
    @current_user_wishlists = []
    @wishlists.each do |wishlist|
      @current_user_wishlists << wishlist if wishlist.user == current_user
    end

    if params[:query].present?
      if Pokemon.search_by_name_and_category(params[:query]).present?
        @pokemons = Pokemon.search_by_name_and_category(params[:query])
      else
        flash[:notice] = "😥 There is nothing corresponding to your search, please try again!"
        redirect_to pokemons_path
      end
    else
    @pokemons = policy_scope(Pokemon).all
    end

  end

  def show
    @pokemon = Pokemon.find(params[:id])
    # authorize @pokemon
  end

  def new
    # @user = User.find(params[:user_id])
    @pokemon = Pokemon.new
    authorize @pokemon
  end

  def create
    @pokemon = Pokemon.new(poke_params)
    @pokemon.user = current_user
    authorize @pokemon
    if @pokemon.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
  end

  def update
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
    if @pokemon.update(poke_params)
      redirect_to dashboard_path, notice: "You just updated a pokemon"
    else
      render :edit
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
    @pokemon.destroy

    redirect_to dashboard_path, notice: "You just deleted a Pokemon from your Bowl"
  end

  def onsale?
    @pokemon.onsale
  end

  private

  def poke_params
    params.require(:pokemon).permit(:name, :category, :level, :price, :photo)
  end
end
