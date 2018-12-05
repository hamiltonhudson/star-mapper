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
    @user = User.create(user_params)
    if @user.valid?
      redirect_to users_path
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
    params.require(:user).permit(:name, :birthday, :birth_year, :zodiac_id, :location_id)
  end

end #class UsersController
