class TroublePostsController < ApplicationController
  before_action :correct_user, only: %i[update destroy]
  
  def index
    @trouble_post = TroublePost.new
    @trouble_posts = TroublePost.includes(:user)
  end

  def create
    trouble_post = current_user.trouble_posts.create!(trouble_post_params)
    redirect_to root_path
  end

  def destroy
    @trouble_post.destroy!
    redirect_to trouble_posts_path
  end

  private
  def trouble_post_params
    params.require(:trouble_post).permit(:content)
  end

  def correct_user
    @trouble_post = current_user.trouble_posts.find_by(id: params[:id])
    redirect_to trouble_posts_path if @trouble_post.nil?
  end
end
