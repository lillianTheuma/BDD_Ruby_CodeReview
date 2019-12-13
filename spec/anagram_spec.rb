require ('rspec')
require ('anagram')

describe('String#anagram') do
  it('should return [true, 4] if given two strings containing the same letters.') do
    anagram = Anagram.new('test')
    expect(anagram.anagram('tset')).to(eq([true, 4]))
  end
  it('should return [true, 4] if given two strings with different capitalisations') do
    anagram = Anagram.new('TeSt')
    expect(anagram.anagram('tsET')).to(eq([true,4]))
  end
  it('should return [false, 3] if given two strings that are not anagrams, but have 3 letters in common') do
    anagram = Anagram.new('tsat')
    expect(anagram.anagram('tast')).to(eq([false,3]))
  end
  it('should return [false, 0] if given two strings that are not anagrams, and have no letters in common') do
    anagram = Anagram.new('test')
    expect(anagram.anagram('fail')).to(eq([false,0]))
  end
  it('should function with words that are not of the same length') do
    anagram = Anagram.new('test')
    expect(anagram.anagram('check')).to(eq([false, 1]))
  end
end
