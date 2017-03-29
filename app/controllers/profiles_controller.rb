class ProfilesController < ApplicationController
  before_action :set_profile, only:[:show, :edit, :update]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create(profile_params)
    redirect_to profile_path(@profile)
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def edit
  end

  def show
  end

  private

  def profile_params
    params.fetch(:profile, {})
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
