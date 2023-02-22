class JewelriesController < ApplicationController
  def index
    @jewelries = policy_scope(Jewelry)
  end

  def new
    @jewelry = Jewelry.new
    authorize @jewelry
  end
end
