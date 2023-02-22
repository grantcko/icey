class JewelriesController < ApplicationController
  def index
    @jewelries = Jewelry.all
  end

  def show
    @jewelry = Jewelry.find(params[:id])
  end
end
