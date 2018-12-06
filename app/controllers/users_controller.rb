class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @locations = Location.all
  end

  def create
    @user = User.new(user_params)
    @user.find_zodiac_for_user
    @user.save
    if @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end #def create

  def edit
    @user = User.find(params[:id])
    @locations = Location.all
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path
    end
  end #def update

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :birth_month, :birth_day, :birth_year, :zodiac_id, :location_id)
  end

end #class UsersController
