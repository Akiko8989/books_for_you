class TroublePostsController < ApplicationController
  
  def new
    @trouble_post = TroublePost.new
  end

  def create
    TroublePost.create!(trouble_post_params)
    redirect_to new_trouble_post_path
  end

  private
  def trouble_post_params
    params.require(:trouble_post).permit(:content)
  end

end
