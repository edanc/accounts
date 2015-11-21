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
  belongs_to: :tire_line_item, inverse_of: :tire_size
end
