class ApplicationController < ActionController::Base

  def main
<<<<<<< HEAD
    # @users = User.all
    # @zodiacs = Zodiac.all
    # @locations = Location.all
    render :main
=======
    render layout: 'main'
>>>>>>> c770dbb6178c45e0aacbaff72d09cb7b5aebad39
  end
end
