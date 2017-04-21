class String
  define_method(:anagrams) do |input_to_compare|

    dictionary = Dictionary.from_file('dictionarylist.txt')

    if dictionary.exists?(self) && dictionary.exists?(input_to_compare)
      word_array = self.downcase.gsub(/[^a-z0-9\s]/i, '').split('')
      compare_array = input_to_compare.downcase.gsub(/[^a-z0-9\s]/i, '').split('')

      if (word_array.uniq.sort == compare_array.uniq.sort) && (word_array.reverse! == compare_array)
        "#{self} and #{input_to_compare} are anagrams! They are also palindromes!"
      elsif word_array.uniq.sort == compare_array.uniq.sort
        "#{self} and #{input_to_compare} are anagrams!"
      else
        "These words have no letter matches and are antigrams."
      end

    else
      "That is not english, try inputting a different word or phrase."
    end
  end
end
