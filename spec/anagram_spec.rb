require ('rspec')
require ('anagram')

describe('String#anagram') do
  it('should return [true, 4] if given two strings containing the same letters.') do
    anagram = Anagram.new('test','tset')
    expect(anagram.anagram?).to(eq([true, 4]))
  end
  it('should return [true, 4] if given two strings with different capitalisations') do
    anagram = Anagram.new('TeSt','tEsT')
    expect(anagram.anagram?).to(eq([true,4]))
  end
  it('should return [false, 3] if given two strings that are not anagrams, but have 3 letters in common') do
    anagram = Anagram.new('tset','tast')
    expect(anagram.anagram?).to(eq([false,3]))
  end
  it('should return [false, 0] if given two strings that are not anagrams, and have no letters in common') do
    anagram = Anagram.new('test','fail')
    expect(anagram.anagram?).to(eq([false,0]))
  end
  it('should function with words that are not of the same length') do
    anagram = Anagram.new('test','check')
    expect(anagram.anagram?).to(eq([false, 1]))
  end
  it('should function with multi-word entries') do
    anagram = Anagram.new('word word','wrod wrod')
    expect(anagram.anagram?).to(eq([true, 8]))
  end
end
