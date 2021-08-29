class StaticPagesController < ApplicationController
  def new_name
    @user.name = User.name
    @user.save
  end
end