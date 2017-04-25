class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favo(micropost)
    flash[:success] = 'いいねしました。'
    redirect_to root_path
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavo(micropost)
    flash[:success] = 'いいねやめました。'
    redirect_to root_path
  end
end
