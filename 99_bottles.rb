bottles = 99

while bottles > 0
    puts 'There are ' + bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer, take one down and pass it around...'
    bottles = bottles.to_i - 1
    puts 'There are ' + bottles.to_s + ' bottles of beer on the wall.'
    puts
    if bottles == 0
        puts 'There are no more bottles of beer on the wall.'
        break
    end
end
