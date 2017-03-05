#!/usr/bin/env ruby

require 'set'

random_name = File.readlines("pony_names.txt")
          .map{|x| x.chomp.split}
          .flatten
          .to_set
          .to_a
          .shuffle
          .take(2)
          .join(" ")

puts random_name



