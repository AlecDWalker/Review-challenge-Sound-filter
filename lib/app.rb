def modulate(array, min = 40, max = 1000)
  raise "Error: impossible range specified" if min > max
  new_array = []
  array.each { |wave|
    wave = min if wave < min
    wave = max if wave > max
    new_array << wave
  }
  return new_array
end
