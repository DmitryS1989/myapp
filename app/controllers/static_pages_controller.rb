# frozen_string_literal: true
class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @adverts = current_user.adverts.build  if user_signed_in?
  end

  def user
    @user = current_user
  end

  def help; end

  def about; end
end
