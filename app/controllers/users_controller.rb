class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    puts "#{params}"
    User.find(params[:id]).destroy
    flash[:success] = "User succesfully deleted"
    redirect_to users_url
  end

  private

  def user_params
    params.require(:user).permit(:name, :user_type)
  end

end
