class UsersController < ApplicationController
  before_action :authenticate_user!


  def index
    @users = User.order(created_at: :desc).page params[:page]
    authorize  @users
  end


  def adverts_params
    params.require(:user).permit(:name, :role, :email)
  end
end
