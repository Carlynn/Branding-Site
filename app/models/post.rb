class Post < ApplicationRecord

  attr_accessor :image

  has_attached_file :image, styles: { lage: "600x600", medium: "300x300>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  belongs_to :admin, optional: true

  include FriendlyId
  friendly_id :title, use: [:finders, :slugged]

  def should_generate_new_friendly_id?
    title_changed?
  end

end
