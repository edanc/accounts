# == Schema Information
#
# Table name: tire_sizes
#
#  id                :integer          not null, primary key
#  created_at        :datetime
#  updated_at        :datetime
#  size              :text             not null
#  tire_line_item_id :integer          not null
#

class TireSize < ActiveRecord::Base
  validates_uniqueness_of :size
  belongs_to :tire_line_item
end
