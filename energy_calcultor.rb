#!/usr/bin/env ruby

print "Device hourly energy consumption in Watts: "
consumption_watts_hr = gets.chomp.to_f
consumption_kw_hr = consumption_watts_hr / 1000

print "Amount of hours device is on: "
hours_on = gets.chomp.to_f

price_per_kw = 0.7
consumption_kw_day = consumption_kw_hr * hours_on * price_per_kw
consumption_kw_month = consumption_kw_day * 30 * price_per_kw

puts
puts "Assuming KW per hour BRL $0.7"
puts "The device consumes $#{consumption_kw_day.round(1).to_s} per day, and $#{consumption_kw_month.round(1).to_s} per month"
