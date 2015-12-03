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
#  deleted_at   :datetime
#  tire_size_id :integer          not null
#

require 'rails_helper'

RSpec.describe TireLineItem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
