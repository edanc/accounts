# == Schema Information
#
# Table name: tire_line_items
#
#  id           :integer          not null, primary key
#  created_at   :datetime
#  updated_at   :datetime
#  units        :integer          not null
#  total_amount :decimal(20, 2)   not null
#  tire_type    :text             not null
#  unit_amount  :text             not null
#  log_id       :integer          not null
#

class TireLineItem < ActiveRecord::Base
  belongs_to :log, inverse_of: :tire_line_items
  has_one :tire_size
end
