require "rails_helper"
RSpec.describe Logs::CreateItems do
  let(:log) { Log.new }
  let(:item_params) {
    {
    "units"=>"1",
    "unit_amount"=>"15",
    "tire_type"=>"new",
    "size"=>"1955515",
    "total_amount"=>"25"
    }
  }

  describe ".create" do
    subject { described_class.execute(log: log, item_params: item_params) }
    context "when tire size is present" do
      it "creates a line item for a log" do
        expect(subject).to be_a TireLineItem
      end
    end
    context "when tire size is not present" do
      it do
        expect{
          described_class.execute(log: log, item_params: {})
        }.to raise_error Logs::TireSizeNotPresentError
      end
    end
  end
end
