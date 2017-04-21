class String
  define_method(:anagrams) do |word_check|
    word_array = self.downcase().split('')
    compare_array = word_check.downcase.split('')

    if (word_array.uniq.sort == compare_array.uniq.sort) && (word_array.reverse! == compare_array)
      'These two words are anagrams! They are also palindromes!'
    elsif word_array.uniq.sort == compare_array.uniq.sort
      'These two words are anagrams!'
    else
      'These two words are not anagrams.'
    end
  end
end
