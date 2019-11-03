# Sort words in an array using < || > alphabetically, a - z, using two arrays: unsorted and sorted.

# Array of words to sort
words = ['treason', 'order', 'democracy', 'law', 'congress', 'impeach', 'senate', 'house', 'republicans', 'democrats', 'court', 'press', 'reporting', 'alliance',
         'defense', 'washington', 'constitution']

# Attempt to isolate the sort method to use again recursively
def the_sort array, sorted_array, unsorted_array

    # Array for holding the current lowest word
    low_word = []
    # Array for holding the current word
    current_word = []

    array.each { |word| current_word.replace([word])

        if low_word.empty? == true
            low_word.push(word)
            # Display the low_word being passed in when low_word.empty? = true
            # puts 'low_word == empty: ' + low_word.to_s
        end
        
        if current_word.to_s > low_word.to_s && unsorted_array.include?(word) == false
            unsorted_array.push(word)
            # Display the word if it's greater than the low_word
            # puts current_word.to_s + ' > ' + low_word.to_s

        elsif current_word.to_s < low_word.to_s && unsorted_array.include?(low_word) == false
            # puts 'The low_word being replaced: ' + low_word.to_s + ' - is being replaced with - ' + current_word.to_s
            # Why does this push cause the word to display as an array? Example: ["treason"] vs treason. A: Pushing low_word.to_s brought in a string of an
            # array: "[\"treason\"]" - not great. Using the .at method I am able to select and push just the string at low_word.at(0) without the array.
            unsorted_array.push(low_word.at(0))
            low_word.replace([word])

        end
        
    }

    sorted_array.push(low_word.at(0))

    unsorted_array.delete_if { |word| word == low_word.at(0)  }

end

# Method to sort the words array
def sort words
    # Arrays for sorting
    sorted_array = []
    unsorted_array = []

    # Attempting a method which helps sort only unsorted_array, instead of words and unsorted_array
    # if unsorted_array.empty? == true && sorted_array.empty? == true
    #     unsorted_array.replace([words])
    # end

    # Array for holding the current lowest word
    low_word = []
    # Array for holding the current word
    current_word = []

    words.each { |word| current_word.replace([word])

        if low_word.empty? == true
            low_word.push(word)
            # Display the low_word being passed in when low_word.empty? = true
            # puts 'low_word == empty: ' + low_word.to_s
        end
        
        if current_word.to_s > low_word.to_s && unsorted_array.include?(word) == false
            unsorted_array.push(word)
            # Display the word if it's greater than the low_word
            # puts current_word.to_s + ' > ' + low_word.to_s

        elsif current_word.to_s < low_word.to_s && unsorted_array.include?(low_word) == false
            # puts 'The low_word being replaced: ' + low_word.to_s + ' - is being replaced with - ' + current_word.to_s
            # Why does this push cause the word to display as an array? Example: ["treason"] vs treason. A: Pushing low_word.to_s brought in a string of an
            # array: "[\"treason\"]" - not great. Using the .at method I am able to select and push just the string at low_word.at(0) without the array.
            unsorted_array.push(low_word.at(0))
            low_word.replace([word])

        end
            
    }

        sorted_array.push(low_word.at(0))
        
        unsorted_array.delete_if { |word| word == low_word.at(0)  }
    
    # Looping through the unsorted_array until it's empty
    while unsorted_array.empty? == false

        # Array for holding the current lowest word
        low_word = []
        # Array for holding the current word
        current_word = []
        
        unsorted_array.each { |word| current_word.replace([word])

            if low_word.empty? == true
                low_word.push(word)
                # Display the low_word being passed in when low_word.empty? = true
                # puts 'low_word == empty: ' + low_word.to_s
            end
            
            if current_word.to_s > low_word.to_s && unsorted_array.include?(word) == false
                unsorted_array.push(word)
                # Display the word if it's greater than the low_word
                # puts current_word.to_s + ' > ' + low_word.to_s

            elsif current_word.to_s < low_word.to_s && unsorted_array.include?(low_word) == false
                # puts 'The low_word being replaced: ' + low_word.to_s + ' - is being replaced with - ' + current_word.to_s
                # Why does this push cause the word to display as an array? Example: ["treason"] vs treason. A: Pushing low_word.to_s brought in a string of an
                # array: "[\"treason\"]" - not great. Using the .at method I am able to select and push just the string at low_word.at(0) without the array.
                unsorted_array.push(low_word.at(0))
                low_word.replace([word])

            end
            
        }

        sorted_array.push(low_word.at(0))
        
        unsorted_array.delete_if { |word| word == low_word.at(0)  }

    end

    puts ' '
    puts ':: sorted_array ::'
    puts sorted_array.to_s
    puts ' '
    puts ':: unsorted_array ::'
    puts unsorted_array.to_s
    puts ' '

end

sort(words)