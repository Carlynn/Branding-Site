class Admin < ApplicationRecord

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

end
