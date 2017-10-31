class Image < ApplicationRecord

  attr_accessor :image

  has_attached_file :image,
    styles: { lage: "600x600", medium: "300x300>", thumb: "100x100#", thumbp: "100x100>" },
    default_url: "/images/:style/missing.png"
  do_not_validate_attachment_file_type :image

  # s3_region: ENV{"aws_region"}

  belongs_to :post, optional: true

end
