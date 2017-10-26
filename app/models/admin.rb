class Admin < ApplicationRecord
  has_many :posts, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   include FriendlyId
   friendly_id :first_name_and_last_name, use: [:finders, :slugged]

   def first_name_and_last_name
     "#{first_name}-#{last_name}"
   end

   def should_generate_new_friendly_id?
     first_name_changed? || last_name_changed?
   end

   private

   def admin_params
     params.require(:admin).permit(:first_name, :last_name, :email, :password, :profile_image)
   end

   def admin_update_params
     params.require(:admin).permit(:first_name, :last_name, :email, :profile_image)
   end

end
