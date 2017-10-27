class RenameGalleriesToImages < ActiveRecord::Migration[5.1]
  def change
    rename_table :galleries, :images
  end
end
