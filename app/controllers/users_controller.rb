class UsersController < ApplicationController
  def show
    @user = current_user
  end
  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to users_show_path
  end
end

