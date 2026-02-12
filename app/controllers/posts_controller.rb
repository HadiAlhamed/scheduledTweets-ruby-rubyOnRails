class PostsController < ApplicationController
  before_action :require_user_logged_in!
  def index
    @posts = Current.user.posts
  end
  #
  def new
    @post = Post.new
  end

  def create
    @post = Current.user.posts.create(post_params)
    if @post.save
      redirect_to posts_path, notice: "Post was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
  #
  def show
  end

  def edit
  end

  def update
  end
  #
  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:mastodon_account_id, :body, :publish_at)
  end
end
