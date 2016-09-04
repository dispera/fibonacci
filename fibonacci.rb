#!/usr/bin/env ruby
#Fibonacci sequence calculator by Diego Spera
#Fibonacci example:
#1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...

puts "Fibonacci calculator"
print "Enter limit: "
limit = gets.chomp.to_i
#puts "Not an integer" unless (limit.is_a? Integer)

def fibonacci (max, total=1)
  i = [0,1]
  print "#{i[1]}, "

  until i[1] >= max do
    i[1] += i[0]
    unless (i[1] + i[0]) >= max
      total += 1
      print "#{i[1]}, "
      i[0] = i[1]
    else
      total += 1
      puts "#{i[1]}."
      puts "Amount of numbers in this sequence: #{total.to_s}"
      break
    end
  end
end

puts
print "Fibonacci sequence: "
fibonacci(limit)
