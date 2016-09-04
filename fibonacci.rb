#!/usr/bin/env ruby
#Fibonacci example:
#1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...

puts "Fibonacci calculator"
print "Enter limit: "
limit = gets.chomp.to_i
#puts "Not an integer" unless (limit.is_a? Integer)

def fibonacci(max)
  i = 1
  last = 0
  total = 0
  until i >= max do
    previous_i = i
    i += last
    unless (i + previous_i) >= max
      total += 1
      print "#{i}, "
      last = previous_i
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
