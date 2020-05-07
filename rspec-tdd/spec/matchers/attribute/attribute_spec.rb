require 'people'

describe 'Atribute' do

  # before(:each) do
  #   p '>>> Before test'
  #   @people = People.new
  # end

  # after(:each) do
  #   p '>>> After test'
  #   @people.name = "No Name"
  #   p ">>> #{@people.inspect}"
  # end

  around(:each) do |test|
    p '>>> Before'
    @people = People.new

    test.run #Run test

    @people.name = 'No name'
    p ">>> After #{@people.inspect}"
  end

  it 'have_attributes' do
    
    @people.name = 'Eduardo'
    @people.age = 24
    expect(@people).to have_attributes(name: start_with('E'), age: (be>= 20))
  end

  it 'have_attributes' do
    @people.name = 'Karla'
    @people.age = 22
    expect(@people).to have_attributes(name: start_with('K'), age: (be>= 20))
  end


end
