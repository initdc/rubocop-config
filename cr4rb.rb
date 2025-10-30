# frozen_string_literal: true
arr = [1,2,3,4,5]
arr.push 6

arr.each { |n| p n}

p arr.detect { |n| n.even? }
p arr.find { |n| n.even? }

p arr.collect { |n| n * 2 }
p arr.map { |n| n * 2 }

p arr.length
p arr.count
p arr.size

i = 0
while i < arr.length
  puts arr[i]
  i += 1
end

i = 0
until i >= arr.length
  puts arr[i]
  i += 1
end

p true and false
p true or false

p true && false
p true || false

arr.each do |n|
  puts n
end

if arr.kind_of?(Array)
  puts "It's an array!"
end

if arr.is_a?(Array)
  puts "It's an array!"
end

if arr.instance_of?(Array)
  puts "It's an array!"
end
if arr.class == Array
  puts "It's an array!"
end

p arr[10]

if not arr.empty?
  puts "Array is not empty"
end

unless !arr.empty?
  puts "Array is not empty"
end

p arr.first if arr.any?

p arr.first if !arr.empty?

p arr.collect { |n| n * 2 }
p arr.inject(&:+)
p arr.reduce(&:*)
