class RentalsController < ApplicationController
  before_action :set_rental, only:[:edit, :update]
  before_action :set_product

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.product_id = @product.id
    @rental.profile_id = current_profile.id
    if @rental.save
      redirect_to profile_path(current_profile)
    else
      render :new
    end
  end

  def update
    @rental.update(confirmed: params[:confirmed])
    redirect_to profile_path(current_profile)
  end

  def edit
  end

  def show
  end

  def find_renter_by_id(profile_id)
    @renter = Rental.find(profile_id).name
  end

  private

  def rental_params
    # params.fetch(:rental, {})
    params.require(:rental).permit(:start_date, :end_date, :product_id, :confirmed, :profile_id)
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
