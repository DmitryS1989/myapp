class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def new_advert
    @advert = current_user.adverts.build  if user_signed_in?
    @adverts = Advert.all
  end

  def new
  end

end
