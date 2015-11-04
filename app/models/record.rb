# == Schema Information
#
# Table name: records
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  date       :date
#  amount     :float
#  created_at :datetime
#  updated_at :datetime
#

class Record < ActiveRecord::Base
end
