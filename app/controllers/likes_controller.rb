class LikesController < ApplicationController
  def create
    current_user.likes.create!(novel_post_id: params[:novel_post_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.likes.find_by(novel_post_id: params[:novel_post_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end
