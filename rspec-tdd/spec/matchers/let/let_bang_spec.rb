$count = 0;

describe 'let! - let bang' do
  order_invocation = []

  let!(:counter) do
    order_invocation << :let!
    $count += 1
  end

  it 'Call method helper before test' do
    order_invocation << :example
    expect(order_invocation).to eq([:let!, :example])
    expect(counter).to eq(1)  
  end  
end
