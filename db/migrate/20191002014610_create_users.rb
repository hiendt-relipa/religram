class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :fullname
      t.string :avatar
      t.timestamps
    end
  end
end
