class ZodiacsController < ApplicationController

  def index
    @zodiacs = Zodiac.all
  end

  def show
    @zodiac = Zodiac.find(params[:id])
  end

end
