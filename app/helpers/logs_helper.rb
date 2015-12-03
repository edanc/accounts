module LogsHelper
  def pretty_tire_size(size)
    size[0..2]+ "-" + size[3..4] + "-" + size[5..6]
  end
end
