class UsersController < ApplicationController

  def index
     @users = User.all
  end
  def show_all_adverts

    @adverts = Advert.all
  end
  def new
  end

end
