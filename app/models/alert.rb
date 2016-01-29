# == Schema Information
#
# Table name: alerts
#
#  id         :integer          not null, primary key
#  text       :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class Alert < ActiveRecord::Base
  validates :text, presence: true, allow_blank: false, length: { maximum: 255 }
end
