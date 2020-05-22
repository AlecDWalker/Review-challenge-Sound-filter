def modulate(array, min = 40, max = 1000)
  raise "Error: impossible range specified" if min > max
  raise "Error: corrupted input (nil values contained)" if array.any?(nil)
  return array.map { |wave|
    if wave < min
      wave = min
    elsif wave > max
      wave = max
    else
      wave = wave
    end
  }
end
