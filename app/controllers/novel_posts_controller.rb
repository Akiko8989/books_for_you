class NovelPostsController < ApplicationController
  before_action :correct_user, only: %i[update destroy]

  def index
    @novel_post = NovelPost.new
    @novel_posts = NovelPost.includes(:user)
    @liked_novel_post_ids = current_user.likes.pluck(:novel_post_id)
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

  def correct_user
    @novel_post = current_user.novel_posts.find_by(id params[:id])
    redirect_to novel_posts_path if @novel_post.nil?
  end
end
