class UsersController < ApplicationController
  def show
    @user = current_user
    @user_topics = @user.topics
    @liked_bookmarks = @user.likes
  end
end
