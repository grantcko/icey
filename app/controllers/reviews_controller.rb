class ReviewsController < ApplicationController
  def new
    # this is only for the form
    @jewelry = Jewelry.find(params[:jewelry_id])
    @review = Review.new(jewelry: @jewelry)
    authorize @review
  end

  def create
    @jewelry = Jewelry.find(params[:jewelry_id]) # pulling the id from the url
    @review = Review.new(review_params)
    @review.jewelry = @jewelry
    authorize @review

    if @review.save
      redirect_to jewelry_path(@jewelry)
    else
      render "jewelrys/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
