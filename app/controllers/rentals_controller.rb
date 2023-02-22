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

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
