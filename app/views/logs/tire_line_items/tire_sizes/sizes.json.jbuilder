@tire_sizes.each do |tire_size|
  json.ignore_nil!
  json.size            tire_size
end
