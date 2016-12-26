require 'rails_helper'
RSpec.describe Logs::TireLineItemsController, type: :controller do
  let(:log) { Log.create }
  let(:tire_params) {
    {
      log_id: log.id,
      log: {
        tire_line_item: {
          size: "1955515",
          units: 1,
          unit_amount: 25.00,
          tire_type: :used,
        }
      }
    }
  }
  describe "#create" do
    it do
      post :create, tire_params
      expect(log.tire_line_items.count).to eq 1
    end
  end

  describe "#destroy" do
    it do
      size = TireSize.create(size: "1955516")
      line = TireLineItem.create(
        log_id: log.id,
        units: 1,
        unit_amount: 15.00,
        tire_type: :used,
        tire_size_id: size.id,
      )
      delete :destroy, id: line.id, log_id: log.id
      expect(log.tire_line_items.count).to eq 0
    end
  end
end
