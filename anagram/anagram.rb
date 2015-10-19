# Public: Determine if a collection of words are anagrams.
# 
# words - A collection of comma-separated String values.
# 
# Examples
# 
#   is_anagram?('eleven plus two', 'twelve plus one')
#   # => true
#   
#   is_anagram?('abcd', 'dcba', 'wxyz')
#   # => false
# 
# Returns a boolean value.
# Raises ArgumentError if no arguments are provided.
# Raises ArgumentError if a non-String argument is provided.
def is_anagram?(*words)
  case words.size
  when 0
    raise ArgumentError, 'Must provide at least one String argument.'
  when 1
    raise ArgumentError, 'Must only provide String arguments.'unless words.first.is_a? String
    return true
  else
    raise ArgumentError, 'Must only provide String arguments.'unless words.first.is_a? String
    ref_word_array = words.shift.downcase.gsub(/\s+/, "").scan(/./).sort!
    words.each do |word|
      raise ArgumentError, 'Must only provide String arguments.' unless word.is_a? String
      return false if ref_word_array != word.downcase.gsub(/\s+/, "").scan(/./).sort!
    end
    return true
  end
end
