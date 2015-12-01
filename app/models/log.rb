# == Schema Information
#
# Table name: logs
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Log < ActiveRecord::Base
  has_many :tire_line_items, inverse_of: :log
  accepts_nested_attributes_for :tire_line_items, allow_destroy: true
end
