# == Schema Information
#
# Table name: tire_sizes
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  size       :text             not null
#

class TireSize < ActiveRecord::Base
  validates_uniqueness_of :size
end
