def reverse(x)
    
    neg_num = x < 0
    x = x.to_s.reverse.to_i

    return  0 if (x > 2147483646 || x < -2147483647)
    
        if neg_num
            -x
        else
            x
            
        end
    return neg_num ? -x : x   
end