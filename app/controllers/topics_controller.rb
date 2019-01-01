class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end
  #
  def show
  #   @topic = Topic.find(params[:id])
  end
  #
  def new
  #   @topic = Topic.new
  end
  #
  # def create
  #   @topic = Topic.new(topic_params)
  #
  #   if @topic.save
  #     flash[:success] = "Topic was saved."
  #     redirect_to user_session_path
  #   else
  #     flash.now[:alert] = "There was an error saving the topic. Please try again."
  #     render :new
  #   end
  # end
  #
  def edit
  #   @topic = Topic.find(params[:id])
  end
  #
  # def update
  #   @topic = Topic.find(params[:id])
  #
  #   @topic.assign_attributes(topic_params)
  #
  #   if @topic.save
  #     flash[:notice] = "Topic was updated"
  #     redirect_to @topic
  #   else
  #     flash[:error] = "There was an error saving the topic. Please try again."
  #     render :edit
  #   end
  # end
  #
  # private
  # def topic_params
  #   params.require(:topic).permit(:title, :user)
  # end
end
