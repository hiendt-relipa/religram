class Post < ApplicationRecord
  belongs_to :user, class_name: User.name
  has_many :comments, dependent: :destroy
  has_many :actions, dependent: :destroy
  has_many :post_hash_tags, dependent: :destroy
  has_many :hash_tags, through: :post_hash_tags

  validates :content, :photo, presence: true
  validates :user_id, presence: true
end
