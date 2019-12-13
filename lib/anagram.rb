class Anagram
  attr_accessor(:text)

  def initialize(input)
    @text = input
  end
  def anagram(compare)
    #removes takes text, downcases, removes non-letters, turns it to an array so I can sort it, then turns it back to a string.
    text_a = @text.downcase.gsub(/[^a-z]/, '').split('').sort.join('')
    compare_a = compare.downcase.gsub(/[^a-z]/, '').split('').sort.join('')

    #goes through letters and each time it finds a match it removes the match from each item, so the remaining values are the letters unique to each string.
    text_a.split('').each do |letter|
      if (compare_a.include?(letter))
        compare_a.sub!(letter,"")
        text_a.sub!(letter,"")
      end
    end
    #returns an array. First element resolves to a boolean (whether or not an anagram), second element resolves to an int (number of letters in common)
    return [((text_a.length == 0) && (compare_a.length == 0)), (@text.length - text_a.length)]
  end
end
