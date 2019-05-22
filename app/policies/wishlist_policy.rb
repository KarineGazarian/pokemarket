class WishlistPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def add_to_wishlist?
    true
  end
end
