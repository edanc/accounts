module FlashErrors
  def flash_error(key:, message:)
    flash[key] = message
  end
end
