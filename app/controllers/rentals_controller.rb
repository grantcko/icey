class RentalsController < ApplicationController
  def index
    @rentals = policy_scope(Rental)
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.jewelry = Jewelry.find(params[:jewelry_id])
    authorize @rental
    if @rental.save
      redirect_to rentals_path
    else
      render "jewelries/show", status: :unprocessable_entity
    end
  end

  def update
    @rental = Rental.find(params[:id])
    authorize @rental
    if @rental.update(rental_params)
      redirect_to owner_rentals_path
    else
      render "owner/rentals"
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:status, :start_date, :end_date)
  end
end
