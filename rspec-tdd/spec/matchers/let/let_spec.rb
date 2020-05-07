$counter = 0;

describe 'let' do
  let(:count) { $counter += 1 }

  it 'Save new value' do
    expect(count).to eq(1)
    expect(count).to eq(1)
  end
  
  it 'Not cached entire test' do
    expect(count).to eq(2)
  end
  
end
