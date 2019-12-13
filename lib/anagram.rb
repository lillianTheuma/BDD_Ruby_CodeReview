class Anagram
  attr_reader(:word1)
  attr_reader(:word2)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end
  def anagram()
    #removes takes text, downcases, removes non-letters, turns it to an array so I can sort it, then turns it back to a string.
    word1_local = @word1.downcase.gsub(/[^a-z]/, '').split('').sort.join('')
    word2_local = @word2.downcase.gsub(/[^a-z]/, '').split('').sort.join('')

    #goes through letters and each time it finds a match it removes the match from each item, so the remaining values are the letters unique to each string.
    word1_local.split('').each do |letter|
      if (word2_local.include?(letter))
        word1_local.sub!(letter,"")
        word2_local.sub!(letter,"")
      end
    end
    #returns an array. First element resolves to a boolean (whether or not an anagram), second element resolves to an int (number of letters in common)
    return [((word1_local.length == 0) && (word2_local.length == 0)), (@word1.split(' ').join('').length - word1_local.length)]
  end
end
