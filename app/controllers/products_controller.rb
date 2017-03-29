  class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  def index
    @products = Product.all
  end

  # GET /products/1
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
  end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  # DELETE /products/1
  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :photo, :photo_cache, :category_id, :profile_id)
    end
  end
