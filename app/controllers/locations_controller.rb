class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  # def show
  #   @location = Location.find(params[:id])
  # end

  def location_users(which_location)
    User.all.select do |user|
      user.location == which_location
    end
  end

  def show
    @location = Location.find(params[:id])
    @sorted_users = location_users(@location)
  end

private
  def location_params
    params.require(:location).perit(:name)
  end

end
