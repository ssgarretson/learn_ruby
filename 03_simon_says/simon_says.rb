def echo (word)
    return word
end

def shout (word)
    return word.upcase
end

def repeat (word, times = 2)
    i = 1
    repeated = word

    loop do
        if i >= times
            break
        end
        repeated += " "
        repeated += word
        i += 1
    end

    return repeated
end

def start_of_word (word, letters = 1) 
    i = 0
    result = ""

    loop do
        if i >= letters
            break
        end
        result += word[i]
        i += 1
    end
    return result
end

def first_word (word) 
    result = word.split
    return result[0]
end

def titleize (title)
    result = title
    little_words = %w[a and the over]
    result = result.gsub(/\w+/) {|match| little_words.include?(match) ? match : match.capitalize}
    result[0] = result[0].upcase
    return result
end