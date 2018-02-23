class PostsController < ApplicationController

  respond_to :html

  helper_method :posts, :post, :comment_init

  before_action :authenticate_user!, except: [:index, :show ]


  def create
    post.title = params[:post][:title]
    post.content = params[:post][:content]
    post.save
    if post.persisted?
      respond_with post, location: root_path
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  protected
  def posts
    @posts ||= Post.all
  end

  def post
    @post ||=
      case action_name
      when 'new', 'create'
        Post.new(author_id: current_user.id)
      when 'edit', 'update', 'show'
        Post.find(params[:id])
      end
  end


  def comment_init
    @comment_init ||= post.comments.new if action_name == "show"
  end

end
