require('rspec')
require('ruby-dictionary')
require('anagrams')
require('pry')

describe('AnagramsCheck#anagrams') do
  it('will check if two words are anagrams') do
    expect('ruby'.anagrams('bury')).to(eq('ruby and bury are anagrams!'))
  end
  it('will check if two words are anagrams regardless of case') do
    expect('Ruby'.anagrams('Bury')).to(eq('Ruby and Bury are anagrams!'))
  end
  it('will check if two words are also palindromes') do
    expect('rat'.anagrams('tar')).to(eq('rat and tar are anagrams! They are also palindromes!'))
  end
  it('will check if word is in the dictionary') do
    expect('yurb'.anagrams('ruby')).to(eq('That is not english, try inputting a different word or phrase.'))
  end
  it('will check if words are antigrams') do
    expect('hi'.anagrams('bye')).to(eq('These words have no letter matches and are antigrams.'))
  end
  it('will check if multiple words are anagrams or antigrams') do
    expect('Eleven plus two'.anagrams('Twelve plus one')).to(eq('Eleven plus two and Twelve plus one are anagrams!'))
  end
end
