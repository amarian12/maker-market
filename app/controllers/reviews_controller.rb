class ReviewsController < ApplicationController
  def new
    @reviews = View.new
  end

  def create
    @review = Review.create(review_params)
    redirect_back(fallback_location: root_path)
  end
end
