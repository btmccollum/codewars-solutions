# Prior to having fancy iPhones, teenagers would wear out their thumbs sending SMS messages on candybar-shaped feature phones with 3x4 numeric keypads.

# ------- ------- -------
# |     | | ABC | | DEF |
# |  1  | |  2  | |  3  |
# ------- ------- -------
# ------- ------- -------
# | GHI | | JKL | | MNO |
# |  4  | |  5  | |  6  |
# ------- ------- -------
# ------- ------- -------
# |PQRS | | TUV | | WXYZ|
# |  7  | |  8  | |  9  |
# ------- ------- -------
# ------- ------- -------
# |     | |space| |     |
# |  *  | |  0  | |  #  |
# ------- ------- -------
# Prior to the development of T9 (predictive text entry) systems, the method to type words was called "multi-tap" and involved pressing a button repeatedly to cycle through the possible values.

# For example, to type a letter "R" you would press the 7 key three times (as the screen display for the current character cycles through P->Q->R->S->7). A character is "locked in" once the user presses a different key or pauses for a short period of time (thus, no extra button presses are required beyond what is needed for each letter individually). The zero key handles spaces, with one press of the key producing a space and two presses producing a zero.

# In order to send the message "WHERE DO U WANT 2 MEET L8R" a teen would have to actually do 47 button presses. No wonder they abbreviated.

# For this assignment, write a module that can calculate the amount of button presses required for any phrase. Punctuation can be ignored for this exercise. Likewise, you can assume the phone doesn't distinguish between upper/lowercase characters (but you should allow your module to accept input in either for convenience).

# Hint: While it wouldn't take too long to hard code the amount of keypresses for all 26 letters by hand, try to avoid doing so! (Imagine you work at a phone manufacturer who might be testing out different keyboard layouts, and you want to be able to test new ones rapidly.)

# sorely needs to be refactored
module MultiTap
    def generate_layouts
        keys = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
        values = [2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,7,8,8,8,9,9,9,9]
        @phonekey_mapping = { " " => 0, '*' => '*', '#' => '#', "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}

        0.upto(values.length - 1) do |index|
        @phonekey_mapping[keys[index]] = values[index] 
        end

        @phonekey_values = { 1 => '1', 
                            2 => ['A','B','C', '2'], 3 => ['D','E','F', '3'], 
                            4 => ['G','H','I', '4'], 5 => ['J','K','L', '5'], 6 => ['M','N','O', '6'], 
                            7 => ['P','Q','R','S', '7'], 8 => ['T','U','V', '8'], 9 => ['W','X','Y','Z', '9'],
                            0 => [' ', '0'], '*' => '*', '#' => '#'
                        }
        return [@phonekey_mapping, @phonekey_values]
    end
 
    def presses_required 
        phonekey_mapping = Hash(generate_layouts[0])
        phonekey_values = Hash(generate_layouts[1])

        presses = 0
        phrase = self.upcase

        if phrase.length < 2 
            char = phrase
            key = phonekey_mapping[char]
            taps = phonekey_values[key].index(char) + 1
        end

        0.upto(phrase.length - 1) do |index|
            char = phrase[index]
            next if !phonekey_mapping[char] 
            
            key = phonekey_mapping[char]
            taps = phonekey_values[key].index(char) + 1
            presses += taps
        end
        return presses
    end
end

def presses(phrase)
    include MultiTap
  
    return phrase.presses_required
end