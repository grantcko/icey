class RentalPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.where(user: user)
      scope.where(user: user)
    end
  end

  def create?
    record.jewelry.user != user
  end

  def update?
    true
  end
end
