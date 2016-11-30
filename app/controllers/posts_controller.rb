class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def new
    if params[:back]
      @post= Post.new(posts_params)
    else
      @post = Post.new
    end
  end

  def create
    @post = Post.new(posts_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path, info: "あーあ、投稿しちゃったよ💢"
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @post.update(posts_params)
      redirect_to posts_path, info: "投稿を更新しました！"
    else
      render action: 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, info: "削除しました！"
  end

  def confirm
    @post = Post.new(posts_params)
    render :new if @post.invalid?
  end

  private
  def posts_params
    params.require(:post).permit(:name, :content, :image, :image_cache, :remove_image)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
