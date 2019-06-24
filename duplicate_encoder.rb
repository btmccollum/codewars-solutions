# The goal of this exercise is to convert a string to a new string
# where each character in the new string is "(" if that character 
# appears only once in the original string, or ")" if that character 
# appears more than once in the original string. Ignore capitalization
# when determining if a character is a duplicate.

def duplicate_encode(word)
  letter_set = {}
  return_value = word.downcase

  #   iterate through once to establish hash of letter occurences 
  0.upto(return_value.length - 1) do |index|
    val = return_value[index]
    letter_set[val] = letter_set[val] ? letter_set[val] += 1 : letter_set[val] = 1
  end

  #   iterate through once to build return value based on hash values
  0.upto(return_value.length - 1) do |index|
    val = return_value[index] 
    return_value[index] = letter_set[val] > 1 ? ")" : "("
  end
  return return_value
end