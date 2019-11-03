var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP A magic spell?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts 'What is your full name'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'

puts 'Let\'s count the letters in your name. What is your first name?'
first_name = gets.chomp
puts 'Thanks. What is your middle name?'
middle_name = gets.chomp
puts 'Okay, and what is your last name?'
last_name = gets.chomp
letters_sum = first_name.length + middle_name.length + last_name.length
puts 'The total number of letters in your name is ' + letters_sum.to_s + '.'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
