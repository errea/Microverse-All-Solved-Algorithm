def str_str(haystack, needle)
    return 0 unless needle.size > 0
    max_iterations = haystack.length - needle.length
    (0..max_iterations).each do |item|
        if haystack[item] == needle[0]
            same = true
            (1..needle.length - 1).each do |i|
                if haystack[item + i] != needle[i]
                    same = false
                end
            end
            return item if same
        end
    end
    -1
    
end