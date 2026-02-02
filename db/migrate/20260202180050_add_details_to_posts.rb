class AddDetailsToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :title, :string
    add_reference :posts, :user, foreign_key: true
    rename_column :posts, :text_field, :body
  end
end
