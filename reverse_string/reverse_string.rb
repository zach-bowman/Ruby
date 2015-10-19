# Public: Reverse a string.
# 
# input_string - A String value.
# 
# Examples
# 
#   reverse_string('George Washington did not have a middle name')
#   # => 'eman elddim a evah ton did notgnihsaW egroeG'
# 
# Returns a String value.
def reverse_string(input_string)
  half_length = input_string.length/2
  half_length.times do |i|
    input_string[i], input_string[-i-1] = input_string[-i-1], input_string[i]
  end
  input_string
end
