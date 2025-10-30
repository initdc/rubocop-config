# frozen_string_literal: true

require "a"
require "b"
require "./c"

foo = true

if foo
  bar = 1
else
  bar = 2
end

case foo
when "a"
  bar += 1
else
  bar += 2
end

if foo
  bar << 1
else
  bar << 2
end

if true == false
  puts "False"
end

p true

x = nil

if x == nil
  puts "Nil"
end

if x
  puts "Nil"
end

def an
end

p "a".length
# p "a".initialize_copy "b"
p "a".intern
p "a" === "a"
p "a" === :a
p "a" === /a/
p "a".eql? :a
p "a".equal? :a

def bc
  return b, c
end

b, _ = bc

a = true

if a
  puts "It's true!"
end

if a
  puts "It's true!"
end

if !a
  puts "It's false!"
end

if not a
  puts "It's false!"
end

# bad
def foo(*args, &block)
  bar(*args, &block)
end

# bad
def foo(*args, **kwargs, &block)
  bar(*args, **kwargs, &block)
end

# good
def foo(...)
  bar(...)
end


arr = [1, 2, 3, 4, 5]

arr.each { |n| puts n }

arr.each do |n| puts n; end.join

arr.eql? [1, 2, 3, 4, 5]
arr.find_index(5)
arr.append(5)
arr.to_ary

arr.slice(0, 2)
