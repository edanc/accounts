# == Schema Information
#
# Table name: tire_sizes
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  size       :text             not null
#

require 'rails_helper'

RSpec.describe TireSize, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
