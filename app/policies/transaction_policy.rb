# transaction_policy.rb
class TransactionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def buy?
    record.user != user && record.onsale == true
  end
end
