require 'string_dont_empty'

describe 'Matchers - Classes' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer)  #Exactly class
  end

  it 'be_kind_of' do
    expect(10).to be_kind_of(Integer)  #Can be heritage
  end

  it 'be_kind_of with string dont empty' do
    str = StringDontEmpty.new
    expect(str).to be_kind_of(String) 
    expect(str).to be_kind_of(StringDontEmpty) 
  end

  it 'respond_to' do
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count)
  end

  it 'be_an / be_a' do
    str = StringDontEmpty.new
    expect(str).to be_an(String) 
    expect(str).to be_an(StringDontEmpty) 

    expect(str).to be_a(String) 
    expect(str).to be_a(StringDontEmpty) 
  end 
end
