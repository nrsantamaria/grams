require('rspec')
require('anagrams')

describe('String#anagrams') do
  it('will check if two words are anagrams') do
    expect('ruby'.anagrams('bury')).to(eq('These two words are anagrams!'))
  end
end
