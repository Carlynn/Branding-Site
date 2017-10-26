class ChangeDefaultImageInPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :default_image, :string
    add_attachment :posts, :image
  end
end
