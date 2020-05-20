require 'app'

describe 'modulate' do
  it 'can return an array that needs no edits' do
    expect(modulate([5,6,7,8,9], 3, 9)).to eq [5,6,7,8,9]
  end

  it 'can fix vales that fall below the minimun range' do
    expect(modulate([5,6,7,8,9], 6, 9)).to eq [6,6,7,8,9]
  end

  it 'can fix vales that fall above the maximum range' do
    expect(modulate([5,6,7,8,9], 5, 7)).to eq [5,6,7,7,7]
  end

  it 'can apply minimum and maximum filters at the same time' do
    expect(modulate([5,6,7,8,9], 6, 7)).to eq [6,6,7,7,7]
  end

  it 'sets the default min and max values if none are specified' do
    expect(modulate([30, 40, 50, 2000])).to eq [40, 40, 50, 1000]
  end

  it 'should throw an error if the given min/max range is impossible' do
    expect{modulate([5,6,7,8,9], 10, 1)}.to raise_error 'Error: impossible range specified'
  end

  it 'can apply the filters regardless of the element orders in the array' do
    expect(modulate([10, 50, 35, 100, 2], 20, 70)).to eq [20, 50, 35, 70, 20]
  end
end
