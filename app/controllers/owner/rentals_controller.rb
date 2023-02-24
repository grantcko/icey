class Owner::RentalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @rentals = policy_scope([:owner, Rental])
  end
end
