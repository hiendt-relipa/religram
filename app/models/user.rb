class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :validatable, :confirmable

  has_many :active_relationships, class_name: Relationship.name,
    foreign_key: :follower_id, dependent: :destroy
  has_many :passive_relationships, class_name: Relationship.name,
    foreign_key: :followed_id, dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :following, through: :active_relationships, source: :followed
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :actions, dependent: :destroy

  validates :username, presence: true,
    length: {minimum: 8}, uniqueness: {case_sensitive: false}
  validates :fullname, presence: true, length: {minimum: 4, maximum: 64}

  delegate :likes, :bookmarks, to: :actions
end
