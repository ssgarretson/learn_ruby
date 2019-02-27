class Book
    attr_accessor :title

    def title

        words = @title.split
        full_title = Array.new
        little_words = ["the", "and", "a", "for", 
                        "on", "to", "in", "of", "an"]
        
        words.each_with_index {|word, index|
            if index == 0
                word = word.capitalize
            else
                unless little_words.include?(word)
                    word = word.capitalize
                end
            end
            full_title << word
        }
        @title = full_title.join(" ")
        return @title
    end

end
