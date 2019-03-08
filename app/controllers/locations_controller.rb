class LocationsController < ApplicationController
  helper_method :location_already_created

  def create
      @location = Location.new(location_params)
      @user = User.find(session[:user_id])
        if location_already_created
          flash[:notice] = "This city has already been added"
          redirect_to new_user_trip_path(@user)
        else
          @location.save
          redirect_to new_user_trip_path(@user)
        end
  end

  def location_already_created
   Location.all.find{|location| location.city == @location.city}
  end


  private

  def location_params
    params.require(:location).permit(:country, :city)
  end
end
