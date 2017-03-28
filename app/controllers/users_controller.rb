class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def edit
  end

  def show
  end

  private

  def user_params
    params.fetch(:user, {})
  end

  def set_user
    @user = User.find(params[:id])
  end
end
