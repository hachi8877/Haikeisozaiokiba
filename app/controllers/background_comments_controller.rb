class BackgroundCommentsController < ApplicationController
  
  def create
    background_image = BackgroundImage.find(params[:background_image_id])
    comment = current_user.background_comments.new(background_comment_params)
    comment.background_image_id = background_image.id
    comment.save
    redirect_to background_image_path(background_image)
  end

  def destroy
    BackgroundComment.find_by(id: params[:id], background_image_id: params[:background_image_id]).destroy
    redirect_to background_image_path(params[:background_image_id])
  end
  
  private

  def background_comment_params
    params.require(:background_comment).permit(:comment)
  end
end
