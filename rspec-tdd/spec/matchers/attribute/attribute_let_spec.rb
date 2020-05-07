require 'people'

describe 'Atribute' do

  # before(:each) do
  #   @people = People.new
  # end
  let(:people) { People.new }
  
  it 'have_attributes' do
    
    people.name = 'Eduardo'
    people.age = 24
    expect(people).to have_attributes(name: start_with('E'), age: (be>= 20))
  end

  it 'have_attributes' do
    people.name = 'Karla'
    people.age = 22
    expect(people).to have_attributes(name: start_with('K'), age: (be>= 20))
  end


end
