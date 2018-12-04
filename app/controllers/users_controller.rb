class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    byebug
    if @user.valid?
      redirect_to users_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :birthday, :birth_year, :zodiac_id, :location_id)
  end

end
