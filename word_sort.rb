puts 'Welcome to Word Sort. Please enter as many words as you\'d like, but hit enter after each one. Press enter at blank prompt to end.'

list = []

while true
    words = gets.chomp

    if words.empty?
        puts list.sort.to_s
        break
    else
        list.push(words)
    end
end
        