require 'app'

describe 'streaming' do

  it 'can handle large scale streaming soundwaves at high speeds' do
    array = Array.new(44100, 10)
    expect(modulate(array, 3, 10)).to eq array
  end
end
