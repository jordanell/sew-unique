# == Schema Information
#
# Table name: images
#
#  id                 :integer          not null, primary key
#  gallery_id         :integer          not null
#  title              :string
#  description        :string
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  position           :integer
#

class Image < ActiveRecord::Base
  acts_as_list scope: :gallery

  belongs_to :gallery

  has_attached_file :image,
                    storage: :s3,
                    s3_credentials: S3_CONFIG_FILE,
                    bucket: S3_CONFIG['images_bucket']

  validates :gallery, presence: true

  validates_attachment :image, presence: true,
    content_type: { content_type: %w(image/jpeg image/jpg image/png image/gif) },
    size: { in: 0..5.megabytes }
end
