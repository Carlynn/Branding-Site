class Post < ApplicationRecord

  attr_accessor :image

  has_attached_file :image,
    :styles => { lage: "600x600", medium: "300x300>", thumb: "100x100#" },
    :default_url => "/images/:style/missing.png",
    :storage => :s3,
    bucket: ENV.fetch('S3_BUCKET_NAME'),
    s3_credentials: {
      access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
      secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
      s3_host_name: ENV.fetch('S3_HOST_NAME'),
      s3_region: ENV.fetch('AWS_REGION')
    }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  # s3_region: ENV{"us-west-1"}

  belongs_to :admin, optional: true
  has_many :images, dependent: :destroy

  # accepts_nested_attributes_for :images, :reject_if => lambda { |f| f['image'].nil? }

  include FriendlyId
  friendly_id :title, use: [:finders, :slugged]

  def should_generate_new_friendly_id?
    title_changed?
  end

end
