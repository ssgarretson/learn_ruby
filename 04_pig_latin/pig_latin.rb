def translate (sentence)
    result = ""
    words  = sentence.split(" ")

    for i in 0..words.size - 1
        result += pigafy(words[i])
        if i != words.size - 1
            result += " "
        end
    end
    return result
end

def pigafy (word)
    consonants = ""
    result     = ""
    size       = word.length
    vowels     = ["a", "e", "i", "o", "u"]
    phonemes   = "qu"
    the_pho    = ""
    i = 0
    loop do
        if i >= size
            break
        end

        if vowels.include?(word[i])
            if (consonants + word[i]).include?(phonemes)
                the_pho += consonants + word[i]
                consonants = ""
            else
                break
            end
        else
            consonants += word[i]
        end
        i += 1
    end

    number_consonants = consonants.length + the_pho.length
    result = word[number_consonants..size] += consonants += the_pho += "ay"
    return result
end