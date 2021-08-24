# frozen_string_literal: true
class StaticPagesController < ApplicationController
  def home
    render :home
  end

  def help; end

  def about; end
end
