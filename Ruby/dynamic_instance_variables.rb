# The GenericEntity class should allow any hash to be passed to its initializer which then creates instance variables and matching attribute readers for each key/value pair in the hash:

# box = GenericEntity.new(:shape => "square", :material => "cardboard")
# #box now has instance variables @shape and @material and attribute readers for both
# box.material #=> "cardboard"
# Make sure that attributes created in prior calls to the initializer are not still defined in subsequent instances of GenericEntity unless they appear in both hashes passed to the initializer.

# box = GenericEntity.new(:shape => "square", :material => "cardboard", :volume => 3.2)
# tree = GenericEntity.new(:material => "organic", :age => 52)
# tree.volume #volume attribute should not exist

class GenericEntity
	def initialize(vals)
    vals.each do |attr|
      # using singleton_class instead of object to avoid 
      # all instances receiving having access to variables
      # that should be specific to each instantiation 
      singleton_class.class_eval { attr_accessor "#{attr[0]}" }
      __send__("#{attr[0]}=", attr[1])
    end
	end
end