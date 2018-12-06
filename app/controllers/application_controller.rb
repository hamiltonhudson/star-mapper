class ApplicationController < ActionController::Base

  def main
    # @users = User.all
    # @zodiacs = Zodiac.all
    # @locations = Location.all
    render :main
  end
end
