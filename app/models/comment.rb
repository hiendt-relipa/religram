class Comment < ApplicationRecord
  belongs_to :user, class_name: User.name
  belongs_to :post, class_name: Post.name

  validates :content, presence: true
  validates :user_id, presence: true
  validates :post_id, presence: true
end
