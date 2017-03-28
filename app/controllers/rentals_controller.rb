class RentalsController < ApplicationController
  before_action :set_rental, only:[:edit, :update]

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.create(rental_params)
    redirect_to rental_path(@rental)
  end

  def update
    @rental.update(rental_params)
    redirect_to rental_path(@rental)
  end

  def edit
  end

  private

  def rental_params
    params.fetch(:rental, {})
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end
end
