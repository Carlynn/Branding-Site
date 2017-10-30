class AddAuthenticationCodeToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :authentication_code, :string
  end
end
