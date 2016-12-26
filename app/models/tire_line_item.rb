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

class TireLineItem < ActiveRecord::Base
  belongs_to :log, inverse_of: :tire_line_items
  belongs_to :tire_size
  validates :units, :unit_amount, presence: true

  TYPES = %w{new used}
  validates :tire_type, inclusion: { in: TYPES }

  scope :number_of_new, -> {
    where(tire_type: "new").map(&:units).sum
  }

  scope :number_of_used, -> {
    where(tire_type: "used").map(&:units).sum
  }

  def total_amount
    (units * unit_amount).round(2)
  end
end
