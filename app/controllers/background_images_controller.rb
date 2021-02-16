class BackgroundImagesController < ApplicationController
  def new
    @background_image = BackgroundImage.new
  end

  def create
    @background_image = BackgroundImage.new(background_image_params)
    @background_image.user_id = current_user.id
    @background_image.save
    redirect_to background_images_path
  end

  def index
    @background_images = BackgroundImage.all
  end

  def show
    @background_image = BackgroundImage.find(params[:id])
  end

  def destroy
    def destroy
    @background_image = BackgroundImage.find(params[:id])
    @background_image.destroy
    redirect_to background_images_path
    end
  end
  
   private

  def background_image_params
    params.require(:background_image).permit(:shop_name, :image, :caption)
  end
end
