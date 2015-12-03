class Logs::TireLineItems::TireSizesController < ApplicationController
  def sizes
    @tire_sizes = TireSize.all.map(&:size)
  end
end
