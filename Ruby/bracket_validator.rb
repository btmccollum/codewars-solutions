# You're working with an intern that keeps coming to you with JavaScript code that won't run because the braces, brackets, and parentheses are off. To save you both some time, you decide to write a braces/brackets/parentheses validator.

# Let's say:
# '(', '{', '[' are called "openers."
# ')', '}', ']' are called "closers."
# Write an efficient method that tells us whether or not an input string's openers and closers are properly nested.

# Examples:
# "{ [ ] ( ) }" should return true
# "{ [ ( ] ) }" should return false
# "{ [ }" should return false

def valid?(code)
  valid_inputs = {
    '(': ')',
    '{': '}',
    '[': ']',
    '|': '|'
  }
  opener_stack = []

  code.each_char do |char|
    next if char == ' '

    if char == '|' && !opener_stack.include?('|')
      opener_stack << char
      next
    end

    if char == '(' || char == '{' || char == '['
      opener_stack << char
    end

    if char == ')' || char == '}' || char == ']' || char == '|'
      # automatically false if nothing left in opener stack
      if opener_stack.length > 0
        char_to_check = opener_stack.pop
        # if there is a corresponding opener we move to the next or
        # else we know this fails
        next if valid_inputs[char_to_check.to_sym] == char
        return false
      else
        return false
      end
    end
  end
  # there should not be anything left by the end
  opener_stack.empty?
end

