def Maybe(value)
  value.nil? ? NullObject.new : value
end