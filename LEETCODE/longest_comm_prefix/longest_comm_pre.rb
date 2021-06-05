def longest_common_prefix(strs)
    
    return '' if strs.empty?
    s1, s2 = strs.min, strs.max
    s1.each_char.with_index do |char, i|
      return s1[0...i] if char != s2[i]
    end
    return s1
      
end


