# This is the first part of this kata series. Second part is here and third part is here

# Add two English words together!

# Implement a class Arith (struct struct Arith{value : &'static str,} in Rust) such that

#   //javascript
#   var k = new Arith("three");
#   k.add("seven"); //this should return "ten" 
#   //c++
#   Arith* k = new Arith("three");
#   k->add("seven"); //this should return string "ten" 
#   //Rust
#   let c = Arith{value: "three"};
#   c.add("seven") // this should return &str "ten"
# Input - Will be between zero and ten and will always be in lower case

class Arith
  attr_accessor :first_num
  NUMS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty)
  
  def initialize(str)
    self.first_num = convert_input(str)
  end
  
  def add(str)
    result = self.first_num + convert_input(str)
    NUMS[result]
  end
  
  #covert str to num equivalent
  def convert_input(str)
    NUMS.index(str)
  end
end