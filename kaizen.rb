puts 'The Kaizen Gate contains endless knowledge. To enter, please pick a number between 0 and 50:'

loop do
    number = gets.chomp
    new_number = rand(50)
    if number.to_i >= 25
        puts 'Science smiles upon you. You may enter the Kaizen Gate...'
        break
    else
        puts 'Science frowns upon you. You have been assigned a new number: ' + new_number.to_s + ', in hopes it opens the Kaizen Gate.'
        if  new_number.to_i >= 25
            puts 'Fortune is with you friend, your new number has unlcoked the Kaizen Gate, you may enter...'
            break
        else
            puts 'Sorry friend, fortune has denied your entry through the Kaizen Gate. Please pick a number between 0 and 50:'
        end
    end
end

puts ':: Prepare for Kaizen ::'
