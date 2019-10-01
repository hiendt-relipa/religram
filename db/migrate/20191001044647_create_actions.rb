class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.string :type
      t.belongs_to :user
      t.belongs_to :post
      t.timestamps
    end
  end
end
