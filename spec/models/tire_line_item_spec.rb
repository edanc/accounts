# == Schema Information
#
# Table name: tire_line_items
#
#  id           :integer          not null, primary key
#  created_at   :datetime
#  updated_at   :datetime
#  units        :integer          default(0), not null
#  tire_type    :text             default(""), not null
#  unit_amount  :decimal(20, 2)   default(0.0), not null
#  log_id       :integer          not null
#  deleted_at   :datetime
#  tire_size_id :integer
#

require 'rails_helper'

RSpec.describe TireLineItem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
