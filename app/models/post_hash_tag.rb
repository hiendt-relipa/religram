class PostHashTag < ApplicationRecord
  belongs_to :post, class_name: Post.name
  belongs_to :hash_tag, class_name: Hashtag.name
end
