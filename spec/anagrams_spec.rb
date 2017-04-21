require('rspec')
require('anagrams')

describe('String#anagrams') do
  it('will check if two words are anagrams') do
    expect('ruby'.anagrams('bury')).to(eq('These two words are anagrams!'))
  end
  it('will check if two words are anagrams regardless of case') do
    expect('Ruby'.anagrams('Bury')).to(eq('These two words are anagrams!'))
  end
  it('will check if two words are also palindromes') do
    expect('rat'.anagrams('tar')).to(eq('These two words are anagrams! They are also palindromes!'))
  end
end
