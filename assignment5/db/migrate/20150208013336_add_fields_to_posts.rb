class AddFieldsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :title, :string
    add_column :posts, :body, :text
    add_column :posts, :user_id, :string
  end
end
