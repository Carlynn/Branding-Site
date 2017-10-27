class AddPostToGallery < ActiveRecord::Migration[5.1]
  def change
    add_reference :galleries, :post, foreign_key: true
  end
end
