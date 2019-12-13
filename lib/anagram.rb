class Anagram
  attr_accessor(:text)

  def initialize(input)
    @text = input
  end
  def anagram(compare)
    text_a = @text.downcase.split('')
    compare_a = compare.downcase.split('')

    final_a = text_a & compare_a
    puts(final_a)
    if (final_a)
      return [true, text_a.length]
    else
      return [false, final_a.length]
    end
  end
end
