class Hashtag < ApplicationRecord
  has_many :post_hash_tags, dependent: :destroy
  has_many :posts, through: :post_hash_tags

  validates :name, presence: true
end
