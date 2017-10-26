class Post < ApplicationRecord
  belongs_to :admin, optional: true

  include FriendlyId
  friendly_id :title, use: [:finders, :slugged]

  def should_generate_new_friendly_id?
    title_changed?
  end

end
