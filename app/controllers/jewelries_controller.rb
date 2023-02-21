class JewelriesController < ApplicationController
  def index
    @jewelries = Jewelry.all
  end
end
