require './palindrome'
RSpec.describe Palindrome do
  context "#longest" do
    it "returns longest palindrome" do
      string = 'Anita lava la tina abut tuba'
      palindrome = Palindrome.new(string)

      expect(palindrome.longest).to eq('Anita lava la tina')
    end

    it "extracts all palindromes" do
      string = "Anita lava la tina abut tuba"
      palindrome = Palindrome.new(string)

      expect(palindrome.list).to include('Anita lava la tina', 'abut tuba')
    end
  end
end
