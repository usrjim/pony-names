#!/usr/bin/env ruby

require 'set'

names = File.readlines("pony_names.txt")
          .map{|x| x.chomp.split}
          .flatten
          .to_set
          .to_a

max = names.length

puts "looping names, any key to see next, [q] to quite."
while input = gets.chomp do
  break if input == 'q'
  puts "#{names[rand(max)]} #{names[rand(max)]}"
end



