#!/usr/bin/env ruby
#Fibonacci sequence calculator by Diego Spera
#Fibonacci example:
#1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...

puts "Fibonacci calculator"
print "Enter limit: "
limit = gets.chomp.to_i
#puts "Not an integer" unless (limit.is_a? Integer)

def fibonacci(max)
  i = 1
  previous_i = 0
  total = 1
  print "#{i}, "

  until i >= max do
    i += previous_i
    unless (i + previous_i) >= max
      total += 1
      print "#{i}, "
      previous_i = i
    else
      total += 1
      puts "#{i}."
      puts "Amount of numbers in this sequence: #{total.to_s}"
      break
    end
  end
end

puts
print "Fibonacci sequence: "
fibonacci(limit)
