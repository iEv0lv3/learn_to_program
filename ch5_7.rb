puts 'What is your favorite number?'
number = gets.chomp
new_number = number.to_i + 1
puts number.to_s + ', interesting, I\'ve always preferred ' + new_number.to_s + ' myself. Your number is cool too though ;)'
