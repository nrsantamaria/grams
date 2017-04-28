class String
  define_method(:anagrams) do |input_to_compare|

    dictionary = Dictionary.from_file('dictionarylist.txt')

    word_array = self.downcase.gsub(/[^a-z0-9\s]/i, '').split()
    input_to_compare_array = input_to_compare.downcase.gsub(/[^a-z0-9\s]/i, '').split()

    word_array.length.times() do
      word_array.push(input_to_compare_array.pop())
    end

    word_check = []
    word_array.each do |word|
      if dictionary.exists?(word)
        word_check.push('true')
      else
        word_check.push('false')
      end
    end

    if word_check.include?('false')
      "That is not english, try inputting a different word or phrase."
    else
      letter_array = self.downcase.gsub(/[^a-z0-9\s]/i, '').split('')
      letter_compare_array = input_to_compare.downcase.gsub(/[^a-z0-9\s]/i, '').split('')

      if (letter_array.sort == letter_compare_array.sort) && (letter_array.reverse! == letter_compare_array)
        "#{self} and #{input_to_compare} are anagrams! They are also palindromes!"
      elsif letter_array.sort == letter_compare_array.sort
        "#{self} and #{input_to_compare} are anagrams!"
      else
        "These words have no letter matches and are antigrams."
      end
    end
  end
end
