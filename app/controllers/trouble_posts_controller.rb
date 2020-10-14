class TroublePostsController < ApplicationController
  
  def new
    @trouble_post = TroublePost.new
  end

  def create
    TroublePost.create
  end

  # 以下のアクションを追加
  # private
  # def troubel_post_params
  #   params.require(:troubel_posts).permit(:content)
  # end
end
