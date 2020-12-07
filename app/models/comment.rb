class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :trouble_post
end
