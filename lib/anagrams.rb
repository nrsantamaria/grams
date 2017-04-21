class String
  define_method(:anagrams) do |word_check|
    dictionary = Dictionary.from_file('dictionarylist.txt')
    if dictionary.exists?(self) && dictionary.exists?(word_check)
      word_array = self.downcase().split('')
      compare_array = word_check.downcase.split('')
      if (word_array.sort == compare_array.sort) && (word_array.reverse! == compare_array)
        'These two words are anagrams! They are also palindromes!'
      elsif word_array.uniq.sort == compare_array.uniq.sort
        'These two words are anagrams!'
      else
        'These words have no letter matches and are antigrams.'
      end
    else
      'That is not a word, try inputting a different word.'
    end
  end
end
