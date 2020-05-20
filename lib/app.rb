def modulate(array, min = 40, max = 1000)
  raise "Error: impossible range specified" if min > max
  raise "Error: corrupted input (null values contained)" if array.any?(nil)
  new_array = []
  array.each { |wave|
    wave = min if wave < min
    wave = max if wave > max
    new_array << wave
  }
  return new_array
end
