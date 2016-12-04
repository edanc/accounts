class Logs::CreateItems
  def self.execute(log:, item_params:)
    new(log, item_params).execute
  end

  def initialize(log, item_params)
    @log = log
    @item_params = item_params
  end

  def execute
    validate_tire_size_param
    line_item = build_line_item
    build_tire_size(line_item)
    line_item
  end

  private
  attr_reader :item_params, :log

  def build_line_item
    log.tire_line_items.new(tire_line_item_params)
  end

  def tire_line_item_params
    item_params.reject{ |param| param == "size"}
  end

  def build_tire_size(line_item)
    tire_size = TireSize.find_or_initialize_by(size: tire_size_param.gsub(/\s+/, ""))
    line_item.tire_size = tire_size
  end

  def tire_size_param
    item_params.fetch("size", nil)
  end

  def validate_tire_size_param
    unless tire_size_param
      raise Logs::TireSizeNotPresentError
    end
  end
end
