class CommentsController < ApplicationController

  respond_to :js
  def create
    post = Post.find(params[:post_id])
    @comment = post.comments.new(username: params[:comment][:username], content: params[:comment][:content])
    @comment.save
  end
end
