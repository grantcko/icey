class JewelriesController < ApplicationController
  def index
    @jewelries = Jewelry.all
  end

  def new
    @jewelry = Jewelry.new
  end
end
