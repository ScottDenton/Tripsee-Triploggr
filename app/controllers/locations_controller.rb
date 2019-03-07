class LocationsController < ApplicationController
  def create

    @location = Location.create(location_params)
    @user = User.find(session[:user_id])

    redirect_to new_user_trip_path(@user)
  end


  private

  def location_params
    params.require(:location).permit(:country, :city)
  end
end
