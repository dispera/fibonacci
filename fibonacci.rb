#!/usr/bin/env ruby
#Fibonacci sequence calculator by Diego Spera
#Fibonacci example:
#1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...

puts "Fibonacci calculator"
print "Enter limit: "
limit = gets.chomp.to_i
#puts "Not an integer" unless (limit.is_a? Integer)

def fibonacci(max)
  previous_i = 0
  i = total = 1

  print "#{i}, "

  until i >= max do
    new_i = i + previous_i
    unless (new_i + i) >= max
      print "#{new_i}, "
      total += 1
      previous_i = i
      i = new_i
    else
      puts "#{new_i}."
      total += 1
      puts "Amount of numbers in this sequence: #{total.to_s}"
      break
    end
  end
end

puts
print "Fibonacci sequence: "
fibonacci(limit)
