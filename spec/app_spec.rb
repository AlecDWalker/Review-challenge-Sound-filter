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
end
