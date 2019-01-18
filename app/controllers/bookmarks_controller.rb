class BookmarksController < ApplicationController

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @bookmark = Bookmark.new
    authorize @bookmark
  end

  def create
    @bookmark = Bookmark.new
    authorize @bookmark
    @bookmark.url = params[:bookmark][:url]
    @bookmark.description = params[:bookmark]
    @topic = Topic.find(params[:topic_id])

    if @bookmark.save
      flash[:notice] = "Bookmark was saved."
      redirect_to [@topic, @bookmark]
    else
     flash.now[:alert] = "There was an error saving the bookmark. Please try again."
     render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    authorize @bookmark
    @bookmark.url = params[:bookmark][:url]

    if @bookmark.save
     flash[:notice] = "Bookmark was updated."
     redirect_to [@bookmark.topic, @bookmark]
    else
     flash[:error] = "There was an error saving this bookmark. Please try again."
     render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    authorize @bookmark

     if @bookmark.destroy
       flash[:notice] = "Bookmark was deleted successfully."
       redirect_to @bookmark.topic
     else
       flash.now[:alert] = "There was an error deleting the bookmark."
       render :show
     end
  end
end
