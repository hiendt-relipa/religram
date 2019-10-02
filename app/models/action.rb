class Action < ApplicationRecord
  belongs_to :user, class_name: User.name
  belongs_to :post, class_name: Post.name

  validates :user_id, presence: true
  validates :post_id, presence: true, uniqueness: {scope: :user_id}

  def self.types
    %w(Like Bookmark)
  end
end
