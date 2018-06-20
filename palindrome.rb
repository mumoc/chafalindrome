class Palindrome
  attr_reader :text, :list

  def initialize(string)
    @text = string
    @list = []
    extract
  end

  def longest
    list.sort_by(&:length).last
  end

  private
  def extract
    first = 0
    while first <= text.length
      last = 0
      while last <= text.length
        substr = text.slice(first, last)
        list.push(substr.strip) if palindrome?(substr.downcase.delete(' '))
        last +=1
      end
      first += 1
    end
  end

  def palindrome?(string)
    return if string.size < 2
    string == string.reverse
  end
end
