class FavoritesController < ApplicationController
  
  def create
    background_image = BackgroundImage.find(params[:background_image_id])
    favorite = current_user.favorites.new(background_image_id: background_image.id)
    favorite.save
    redirect_to background_image_path(background_image)
  end

  def destroy
    background_image = BackgroundImage.find(params[:background_image_id])
    favorite = current_user.favorites.find_by(background_image_id: background_image.id)
    favorite.destroy
    redirect_to background_image_path(background_image)
  end
end
