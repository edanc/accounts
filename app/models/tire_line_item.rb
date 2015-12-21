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

class TireLineItem < ActiveRecord::Base
  belongs_to :log, inverse_of: :tire_line_items
  belongs_to :tire_size
  accepts_nested_attributes_for :tire_size, allow_destroy: true

  acts_as_paranoid

  TYPES= %w{new used}
  validates :tire_type, inclusion: { in: TYPES }

  scope :number_of_new, -> {
    where(tire_type: "new").size
  }

  scope :number_of_used, -> {
    where(tire_type: "used").size
  }
end
