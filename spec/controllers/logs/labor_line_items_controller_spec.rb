require 'rails_helper'
RSpec.describe Logs::LaborLineItemsController, type: :controller do
  let(:log) { Log.create }
  let(:labor_params) {
    {
      log_id: log.id,
      labor_line_items: { amount: 15.00, }
    }
  }
  describe "#create" do
    it do
      post :create, labor_params
      expect(log.labor_line_items.count).to eq 1
    end
  end

  describe "#destroy" do
    it do
      labor = LaborLineItem.create(log_id: log.id, amount: 12)
      delete :destroy, id: labor.id, log_id: log.id
      expect(log.labor_line_items.count).to eq 0
    end
  end
end
