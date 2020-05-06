require 'people'

describe 'Atribute' do
  it 'have_attributes' do
    people = People.new
    people.name = 'Eduardo'
    people.age = 24
    expect(people).to have_attributes(name: start_with('E'), age: (be>= 20))
  end
end
