class BackgroundImagesController < ApplicationController
  def new
    @background_image = BackgroundImage.new
  end

  def create
    @background_image = BackgroundImage.new(background_image_params)
    @background_image.user_id = current_user.id
    if @background_image.save
      redirect_to background_images_path
    else
      render :new
    end
  end

  def index
    @background_images = BackgroundImage.page(params[:page]).reverse_order
    @tags = BackgroundImage.tag_counts_on(:tags).most_used(20)

  end

  def show
    @background_image = BackgroundImage.find(params[:id])
    @background_comment = BackgroundComment.new
    @tags = @background_image.tag_counts_on(:tags)
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
