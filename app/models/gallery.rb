# == Schema Information
#
# Table name: galleries
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :string
#  visible     :boolean          default(TRUE)
#  created_at  :datetime
#  updated_at  :datetime
#

class Gallery < ActiveRecord::Base
  has_many :images, -> { order(position: :asc) }

  validates :title, presence: true, allow_blank: false
  validates_uniqueness_of :title
  validate :image_total

  scope :visible, -> { where(visible: true) }

  private

  def image_total
    errors.add("Gallery has too many image") if images.size > 10
  end
end
