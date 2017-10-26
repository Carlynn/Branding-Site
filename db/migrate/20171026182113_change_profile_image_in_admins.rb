class ChangeProfileImageInAdmins < ActiveRecord::Migration[5.1]
  def change
    remove_column :admins, :profile_image, :string
    add_attachment :admins, :image
  end
end
