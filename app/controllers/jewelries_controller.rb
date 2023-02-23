class JewelriesController < ApplicationController
  def index
    @jewelries = policy_scope(Jewelry)
  end

  def new
    @jewelry = Jewelry.new
    authorize @jewelry
  end

  def show
    @jewelry = Jewelry.find(params[:id])
    authorize @jewelry
    @rental = Rental.new
  end

  def create
    @jewelry = Jewelry.new(jewelry_params)
    authorize @jewelry
    if @jewelry.save
      redirect_to jewelry_path(@jewelry)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def jewelry_params
    params.require(:jewelry).permit(:name, :detail, :price, :photo)
  end
end
