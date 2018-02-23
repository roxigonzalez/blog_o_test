class AuthorsController < ApplicationController
  def my_posts
    @my_posts = current_user.posts
  end
end
