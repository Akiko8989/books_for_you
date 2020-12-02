class Like < ApplicationRecord
  belongs_to :user
  belongs_to :novel_post
  validates :user_id, uniqueness: {
    scope: :novel_post_id,
    message: "は同じ投稿に2回以上いいねはできません"
  }
end
