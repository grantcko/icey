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
end
