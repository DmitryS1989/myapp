class AdvertsController < ApplicationController

  def show_all_adverts
    @adverts = Advert.order(created_at: :desc).page params[:page]
    authorize @adverts
  end
  def new_advert
    @user = current_user
    authorize @user
    @advert = current_user.adverts.build if user_signed_in?
    @adverts = current_user.adverts.all.page params[:page]
  end
  def create
    @advert = current_user.adverts.build(adverts_params)
    if @advert.save
      current_user.add_role :creator, @advert
      redirect_to '/show-my-adverts'
    else
      render '/static_pages/home'
    end
  end

  def edit
    @adverts = Advert.order(created_at: :desc)
    @advert = Advert.find(params[:id])

  end
  def update
    @advert= Advert.find(params[:id])
    authorize @advert
    if @advert.update(adverts_params)
      redirect_to '/show-my-adverts'
    else
      render 'edit'
    end
  end


  def destroy
    Advert.find(params[:id]).destroy
    redirect_to  '/show-my-adverts'
  end

  private

  def adverts_params
    params.require(:advert).permit(:content, :status, :category)
  end

end