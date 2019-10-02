class CreatePostHashTags < ActiveRecord::Migration[5.2]
  def change
    create_table :post_hash_tags do |t|
      t.belongs_to :post
      t.belongs_to :hash_tag
      t.timestamps
    end
  end
end
