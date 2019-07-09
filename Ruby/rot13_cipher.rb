# https://www.hackerrank.com/challenges/ruby-enumerable-collect/problem

# separation of concerns, create method solely responsible for creating the cipher
def rot13_cipher
    input = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    output = "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm"
    cipher = {}
    0.upto(input.length - 1) do |i|
        cipher[(input[i])] = output[i]
    end
    cipher
end

# secret_messages is an array of several strings (or groupings) that need to be encoded/decoded
def rot13(secret_messages)
    cipher = rot13_cipher
    
    # manually step through each string group in the array
    secret_messages.map do |string|
        0.upto(string.length - 1) do |i|
          next if string[i] == " "
          letter_to_change = string[i]
          string[i] = cipher[letter_to_change]
        end
        string
    end
end

# alternative using #tr

# def rot13(secret_messages)
#     secret_messages.map { |word| word.tr('a-z', 'n-za-m' )}
# end