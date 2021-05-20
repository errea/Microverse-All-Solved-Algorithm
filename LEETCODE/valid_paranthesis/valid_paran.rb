def is_valid(string)
    stack = []
  
  string.each_char do |char|
    if MAPPING.key?(char)
      stack << MAPPING[char]
    else
      current_open = stack.pop
      return false unless char == current_open
    end
  end
  
  stack.empty?
    
end

MAPPING = {
  '(' => ')',
  '{' => '}',
  '[' => ']'
}.freeze