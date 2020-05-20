def modulate(array, min, max)
  new_array = []
  array.each { |wave|
    wave = min if wave < min
    new_array << wave
  }
  return new_array
end
