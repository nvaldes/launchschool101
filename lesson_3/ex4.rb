require 'pp'

# Question 1

# My Solution

statement = "The Flintstones Rock!"

10.times do
  puts statement
  statement.prepend " "
end

# Official Solution

10.times { |n| puts (" " * n) + "The Flintstones Rock" }

# Question 2

statement = "The Flintstones Rock"
result = {}

statement.each_char { |c| result[c] = statement.scan(c).count }
pp result.sort.to_h

# Question 3
## It's an error because String#+ does not cast the argument to string.  An explicit cast or call to #to_s is required.

# Fix 1

puts "the value of 40 + 2 is " + (40 + 2).to_s

# Fix 2

puts "the value of 40 + 2 is #{40 + 2}"

# Question 4

## The first block would cause the loop to only iterate over every other item in the original array.  Array#shift is only called twice, so 3 and 4 remain in the array, which is returned by Array#each.  Output:

### 1
### 3
### => [3, 4]

## The 2nd block would iterate over the first two items in the array, and then reach the end.  Since Array#pop is only called twice, the first two items in the array will remain to be returned by Array#each.  Output:

### 1
### 2
### => [1, 2]

# Question 5

## Fix: set the condition to dividend <= 0 instead of == 0

## Bonus 1: Test for divisibility.  Modulo of a number and any of its factors is always zero.

## Bonus 2: It's an implicit return statement.  bbatsov's guide says that implicit returns are preferable when an explicit return is not needed for flow control.

# Question 6

## Array#+ is a shortcut for Array#concat, whereas Array#<< is a shortcut for Array#append.  The former takes an array as its input, meaning that for the sake of the buffer you have to wrap the incoming value in an array so that the concat can unwrap it - seems wasteful.

## Official Answer:  Using Array#<< changes the original buffer, whereas Array#+ does not.

# Question 7

## Limit is defined outside the fib method, and is not passed in as an argument.  Add a limit argument to fib and pass that value in.  You can define the limit variable as the default value for the limit argument so that you don't need to explicitly include it - thereby making the method easier to reuse.

# Question 8

def titleize(string)
  string.split.map { |w| w.capitalize }.join ' '
end

# Question 9

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |_, m|
  case
  when m['age'] > 64
    m['age_group'] = 'senior'
  when m['age'] > 17
    m['age_group'] = 'adult'
  else
    m['age_group'] = 'kid'
  end
end

p munsters
