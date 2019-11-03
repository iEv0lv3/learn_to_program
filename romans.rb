# def roman_numerals

#     while true

#         i = 'I'
#         v = 'V'
#         x = 'X'
#         l = 'L'
#         c = 'C'
#         d = 'D'
#         m = 'M'

#         puts 'Please enter a number between 1 and 3000. Type "done" to quit.'
#         number = gets.chomp.to_i

#         if number == done
#             break
#         end

#         if (number >= 3000 || number <= 0)
#             puts 'Please enter a number between 1 and 3000.'
#         end

#         if number <= 4
#             the_i = i * number
#             puts the_i
#         end

#         if (number >= 5 && number <= 9)
#             the_v = number / 5
#             the_i = number % 5
#             puts (v * the_v) + (i * the_i)
#         end

#         if (number >= 10 && number <= 49)
#             the_x = number / 10
#             remainder = number % 10

#             if remainder == 0
#                 puts (x * the_x)
#             elsif (remainder >= 1 && remainder <= 4)
#                 the_i = remainder / 1
#                 puts (x * the_x) + (i * the_i)
#             else
#                 the_v = remainder / 5
#                 the_i = remainder % 5
#                 puts (x * the_x) + (v * the_v) + (i * the_i)
#             end
#         end

#         if (number >= 50 && number <= 99)
#             the_l = number / 50
#             remainder = number % 50

#             if remainder == 0
#                 puts (l * the_l)
#             elsif (remainder >= 1 && remainder <= 4)
#                 the_i = remainder / 1
#                 puts (l * the_l) + (i * the_i)
#             else
#                 the_x = remainder / 10
#                 the_v = remainder / 5
#                 the_i = remainder % 5
#                 puts (x * the_x) + (v * the_v) + (i * the_i)
#             end
#         end
#     end
# end

def roman_numerals

    m_length = 0
    d_length = 0
    c_length = 0
    l_length = 0
    x_length = 0
    v_length = 0
    i_length = 0

    while true

        puts 'Please enter a number between 1 and 3000. Type "done" to quit.'
            number = gets.chomp.to_i

        if number == 'done'
            break
        end

        if (number >= 3000 || number <= 0)
            puts 'Please enter a number between 1 and 3000.'
        end

        if number >= 1000
        m_length = number / 1000
        number = number % 1000
        end

        if number >= 500
        d_length = number / 500
        number = number % 500
        end

        if number >= 100
        c_length = number / 100
        number = number % 100
        end

        if number >= 50
        l_length = number / 50
        number = number % 50
        end

        if number >= 10
        x_length = number / 10
        number = number % 10
        end

        if number >= 5
        v_length = number / 5
        number = number % 5
        end

        if number < 5
        i_length = number / 1
        number = number % 10
        end

        puts 'M' * m_length + 'D' * d_length + 'C' * c_length + 'L' * l_length + 'X' * x_length +
        'V' * v_length + 'I' * i_length
    end
end

roman_numerals
