class JewelriesController < ApplicationController
  def index
    @jewelries = policy_scope(Jewelry)
    if params[:query].present?
      @jewelries = Jewelry.search_by_name_and_detail(params[:query])
    else
      @jewelries = Jewelry.all
    end
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
    @jewelry.user = current_user
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
