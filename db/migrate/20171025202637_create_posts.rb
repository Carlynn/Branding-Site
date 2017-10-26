class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :default_image
      t.string :slug

      t.timestamps
    end
  end
end
