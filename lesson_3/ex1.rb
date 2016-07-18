# Question 1: Array#uniq returns a new array with duplicates omitted, so the
## original object is not modified.

# => 1
# => 2
# => 2
# => 3

# Question 2: Depends on the usage...

# ! is a function that returns False if it's argument evaluates to False or
## nil, and returns True otherwise.

# !! is just the same function twice ...like it could be written as !(!(arg)),
## where the return value of the 2nd ! is the argument to the 1st... so it
## flips the negation back to the actual boolean representation.
## Idiomatically, it's used as an explicit cast.

# ? is half of the ternary operator ?:.  It cannot exist without the colon.

# Either symbol at the end of a method name are idiomatic suffixes that don't
## actually do anything, but mean things about the methods to rubyists.
# Methods ending in ! idiomatically act directly upon their arguments, not on
## copies of the args.
# Methods ending in ? idiomatically return a boolean.

# Question 3

advice = 'Few things in life are as important as house training your pet \
dinosaur.'
advice.gsub! 'important', 'urgent'
puts advice

# Question 4: Array#delete_at takes an index so delete_at(1) will delete the
## 2nd item in the array.  Array#delete takes a value, so delete(1) will find
## all elements that == 1 and delete them.

# Question 5

range = 10..100
puts range.cover? 42

# Question 6

famous_words = 'seven years ago...'
puts 'Four score and ' + famous_words
puts famous_words.prepend('Four score and ')

# Question 7: 42

def add_eight(number)
  number + 8
end

number = 2

how_deep = 'number'
5.times { how_deep.gsub!('number', 'add_eight(number)') }

p eval how_deep

# Question 8: use Array#flatten!.

flintstones = ['Fred', 'Wilma']
flintstones << ['Barney', 'Betty']
flintstones << ['BamBam', 'Pebbles']

p flintstones

flintstones.flatten!

p flintstones


# Question 9

flintstones = { 'Fred' => 0, 'Wilma' => 1, 'Barney' => 2, 'Betty' => 3, 'BamBam' => 4, 'Pebbles' => 5 }

p flintstones.assoc('Barney')

# Question 10

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash
