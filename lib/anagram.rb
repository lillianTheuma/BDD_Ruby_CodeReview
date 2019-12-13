class Anagram
  attr_accessor(:text)

  def initialize(input)
    @text = input
  end
  def anagram(compare)
    text_a = @text.downcase.gsub(/[^a-z]/, '').split('').sort.join('')
    compare_a = compare.downcase.gsub(/[^a-z]/, '').split('').sort.join('')

    text_a.split('').each do |letter|
      if (compare_a.include?(letter))
        compare_a.sub!(letter,"")
        text_a.sub!(letter,"")
      end
    end


    if ((text_a.length == 0) && (compare_a.length == 0))
      puts("#{text_a.length}\n")
      return [true, @text.length]
    else
      return [false, (@text.length - text_a.length)]
    end
  end
end
