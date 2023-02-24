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
      respond_to do |format|
        format.html { redirect_to jewelry_path(@jewelry) }
        format.json do
          render json: {
            review_html: render_to_string(partial: 'reviews/review', formats: :html, locals: { review: @review }),
            form_html: render_to_string(partial: 'reviews/new', formats: :html, locals: { jewelry: @review.jewelry, review: Review.new }),
          }.to_json
        end
      end
    else
      respond_to do |format|
        # display the form again
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: {
            form_html: render_to_string(partial: 'reviews/new', formats: :html, locals: { jewelry: @review.jewelry, review: @review }),
          }.to_json
        end
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
