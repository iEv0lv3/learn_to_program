puts 'Let\'s have a chat with Grandma. What would you like to talk about?'

loop do
    talk = gets.chomp

    if talk != talk.upcase
        puts 'HUH?! SPEAK UP, SONNY!'
    elsif talk == talk.upcase
        year = rand(40) + 1930
        puts 'NO, NOT SINCE ' + year.to_s + '! NOW BUGGER OFF!'
    end

    if talk == 'BYE'
        puts 'WHAT?'
        bye_again = gets.chomp
        if bye_again == 'BYE'
            puts 'ARE YOU SURE SONNY?'
            last_bye = gets.chomp
            if last_bye == 'BYE'
                puts 'See you later Sonny!'
                break
            else
                puts 'C\'mon man! Let\'s talk about something else.'
            end
        else
            puts 'You\'re crazy. Let\'s talk about something else.'
        end
    end
end
