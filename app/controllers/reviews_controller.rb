class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    redirect_to profile_path(current_profile)
  end

  def review_params
    # params.fetch(:rental, {})
    params.require(:review).permit(:stars, :description)
  end
end
