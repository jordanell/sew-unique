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
  has_many :images

  validates :title, presence: true, allow_blank: false
  validates_uniqueness_of :title

  scope :visible, -> { where(visible: true) }
end
