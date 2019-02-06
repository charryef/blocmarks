class LikesController < ApplicationController

  def create
  @bookmark = Bookmark.find(params[:bookmark_id])
  like = current_user.likes.build(bookmark: @bookmark)


    if like.save
        flash[:notice] = "Bookmark was liked successfully."
      redirect_to [@bookmark.topic]
    else
      flash[:alert] = "Something went wrong. Please try again."
      redirect_to [@bookmark.topic]
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.find(params[:id])

    if like.destroy
      flash[:notice] = "Bookmark was unliked successfully."
      redirect_to [@bookmark.topic]
    else
      flash[:alert]  = "Sonething went wrong. Please try again."
      redirect_to [@bookmark.topic]
    end
  end
end
