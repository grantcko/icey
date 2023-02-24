class Owner::RentalPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # Only the restaurant that the user owns
      user.rentals_as_owner # `user` means `current_user` in Pundit
    end
  end
end
