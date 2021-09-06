class UsersController < ApplicationController
  before_action :authenticate_user!


  def index
    @users = User.order(created_at: :desc)
  end

  def new_advert
    @advert = current_user.adverts.build if user_signed_in?
    @adverts = current_user.adverts.all
  end

end
