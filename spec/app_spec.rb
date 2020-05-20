require 'app'

describe 'modulate' do
  it 'can return an array that needs no edits' do
    expect(modulate([5,6,7,8,9], 3, 9)).to eq [5,6,7,8,9]
  end
end
