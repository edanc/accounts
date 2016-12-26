# == Schema Information
#
# Table name: labor_line_items
#
#  id          :integer          not null, primary key
#  created_at  :datetime
#  updated_at  :datetime
#  log_id      :integer          not null
#  amount      :decimal(20, 2)   default(0.0), not null
#  description :text
#  deleted_at  :datetime
#

class LaborLineItem < ActiveRecord::Base
  belongs_to :log, inverse_of: :labor_line_items
  acts_as_paranoid
  validates :amount, presence: true
end
