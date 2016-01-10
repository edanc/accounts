# == Schema Information
#
# Table name: logs
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  deleted_at :datetime
#  summarize  :boolean          default(FALSE)
#

class Log < ActiveRecord::Base
  has_many :tire_line_items, inverse_of: :log, dependent: :destroy
  accepts_nested_attributes_for :tire_line_items, allow_destroy: true

  acts_as_paranoid
end
