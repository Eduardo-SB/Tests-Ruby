require 'people'

shared_examples "status" do |feeling|
  it "#{feeling}" do
    people.send("#{feeling}!")
    expect(people.status).to eq("Feeling #{feeling.capitalize}!")
  end
end

describe 'People' do
  subject(:people) { People.new }

  it_behaves_like "status", :happy 
  it_behaves_like "status", :bad 
  it_behaves_like "status", :glad 

  # it "happy!" do
  #   people.happy!
  #   expect(people.status).to eq("Feeling Happy!")
  # end
  
  # it "bad!" do
  #   people.bad!
  #   expect(people.status).to eq("Feeling Bad!")
  # end

  # it "glad" do
  #   people.glad!
  #   expect(people.status).to eq("Feeling Glad!") 
  # end
end

