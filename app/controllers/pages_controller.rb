class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    # @user_pokemons = policy_scope(Pokemon)
    @user_pokemons = policy_scope(Pokemon).where(user: current_user)
  end

end
