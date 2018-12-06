class ZodiacsController < ApplicationController

  def index
    @zodiacs = Zodiac.all
  end

  # def show
  #   @zodiac = Zodiac.find(params[:id])
  # end

  def zodiac_users(which_zodiac)
    User.all.select do |user|
      user.zodiac == which_zodiac
    end
  end

  def show
    @zodiac = Zodiac.find(params[:id])
    @user_results = zodiac_users(@zodiac)
  end

private
  def zodiac_params
    params.require(:zodiac).permit(:sign, :start_date, :end_date, :keywords,
    :symbol, :element, :quality, :vibe, :mental_traits, :physical_traits)
  end

end
