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
        end
        
        if current_word.to_s > low_word.to_s && unsorted_array.include?(word) == false
            unsorted_array.push(word)

        elsif current_word.to_s < low_word.to_s && unsorted_array.include?(low_word) == false
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

    # Iterate through the words array first
    the_sort(words, sorted_array, unsorted_array)
    
    # Looping through the unsorted_array until it's empty
    while unsorted_array.empty? == false
        # Passing the array's current values to have available for the_sort. No setting values, because they will erase the current values. Ex: unsorted_array = []
        unsorted_array
        sorted_array

        # Iterate through the unsorted_array until empty
        the_sort(unsorted_array, sorted_array, unsorted_array)
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