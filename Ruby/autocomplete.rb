# https://www.codewars.com/kata/autocomplete-yay/train/ruby
# It's time to create an autocomplete function! Yay!

# The autocomplete function will take in an input string and a dictionary array and return the values from the dictionary that start with the input string. If there are more than 5 matches, restrict your output to the first 5 results. If there are no matches, return an empty array.

# Example:

# autocomplete('ai', ['airplane','airport','apple','ball']) = ['airplane','airport']
# For this kata, the dictionary will always be a valid array of strings. Please return all results in the order given in the dictionary, even if they're not always alphabetical. The search should NOT be case sensitive, but the case of the word should be preserved when it's returned.

def autocomplete(input, dictionary)
  results = []
  sanitized_input = input.gsub(/[^A-Za-z]/, '')

  dictionary.each do |word|
    break if results.length >= 5
    next unless word.downcase.start_with?(sanitized_input)
    results << word
  end
  results
end