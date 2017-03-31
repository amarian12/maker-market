class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @rental = Rental.find(params[:rental_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @rental = Rental.find(params[:rental_id])
    @review = @rental.reviews.build(review_params)
    if @review.save!
      redirect_to profile_path(current_profile)
    else
      render :new
    end
  end

  def review_params
    # params.fetch(:rental, {})
    params.require(:review).permit(:stars, :description)
  end
end
