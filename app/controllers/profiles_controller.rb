class ProfilesController < ApplicationController
  before_action :set_profile, only:[:show, :edit, :update]

  def update
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def edit
    unless @profile == current_profile
      redirect_to profile_path(@profile)
    flash[:notice] = "You shall not edit!"
    end
  end

  def show
  end

  private

  def profile_params
    # params.fetch(:profile, {})
    params.require(:profile).permit(:name, :photo, :photo_cache, :description, :location)
  end

  def set_profile
    @profile = Profile.find(params[:id])

  end
end
