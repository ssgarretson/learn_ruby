def add (x,y)
    return x + y
end

def subtract (x,y)
    return x - y
end

def sum (numbers)
    sum = 0
    size = numbers.length
    
    i = 0
    loop do
        if i == size
            break
        end
        sum += numbers[i]
        i += 1
    end
    return sum
end
