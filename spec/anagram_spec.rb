require ('rspec')
require ('anagram')

describe('String#anagram') do
  it('should return [true, 4] if given two strings containing the same letters.') do
    expect('test'.anagram('tset')).to(eq([true, 4]))
  end
  it('should return [true, 4] if given two strings with different capitalisations') do
    expect('TeSt'.anagram('tsET')).to(eq([true,4]))
  end
  it('should return [false, 3] if given two strings that are not anagrams, but have 3 letters in common') do
    expect('test'.anagram('tast')).to(eq([false,3]))
  end
  it('should return [false, 0] if given two strings that are not anagrams, and have no letters in common') do
    expect('test'.anagram('fail')).to(eq([false,0]))
  end
  it('should function with words that are not of the same length') do
    expect('testing'.anagram('check')).to(eq([false, 1]))
  end
end
