class PokemonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(@pokemon.user_id) == user.id
    end
  end

  def show?
      # scope.where(@pokemon.user_id) == user.id
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
