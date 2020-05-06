require 'string_dont_empty'

describe String do
  describe StringDontEmpty do
    it "Dont empty" do
      expect(subject).to eq('Dont empty')
    end
  end
end

