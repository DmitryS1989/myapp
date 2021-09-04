class AdvertsController < ApplicationController


  def show_all_adverts
    @adverts = Advert.all
  end
  def create
    @advert = current_user.adverts.build(adverts_params)
    if @advert.save
      redirect_to '/show-my-adverts'
    else
      render '/static_pages/home'
    end
  end

  def destroy
  end

  private

  def adverts_params
    params.require(:advert).permit(:content, :status, :category)
  end

end