class UsersController < ApplicationController
  before_action :authenticate_user!


  def index
    @users = User.order(created_at: :desc).page params[:page]
    authorize  @users
  end

  def edit
    @user = User.find(params[:id])
    authorize  @user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end
  def destroy
    User.find(params[:id]).destroy
    redirect_to  users_path
  end

  def user_params
    params.require(:user).permit(:name, { role_ids: [] }, :email)
  end
end
