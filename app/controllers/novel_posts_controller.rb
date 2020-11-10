class NovelPostsController < ApplicationController

  def index
    @novel_post = NovelPost.new
    @novel_posts = NovelPost.includes(:user)
  end

  def create
    novel_post = current_user.novel_posts.create!(novel_post_params)
    redirect_to novel_posts_path
  end

  def destroy
    novel_post = NovelPost.find(params[:id])
    novel_post.destroy!
    redirect_to novel_posts_path
  end

  private
  def novel_post_params
    params.require(:novel_post).permit(:title, :author, :for_genre, :content)
  end
end
