# Question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.include? "Spot"
ages.key? "Spot"
ages.member? "Spot"

# Question 2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# original solution:

sum_ages = 0
ages.each_value { |v| sum_ages += v }

# idiomatic improvement:

ages.values.inject :+

# Question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select! { |_, v| v < 100 }

# Hash#keep_if is almost identical, but Hash#select! returns nil if no changes were made, whereas the former returns the original hash.

# Question 4

munsters_description = "The Munsters are creepy in a good way."

munsters_description.capitalize
munsters_description.swapcase
munsters_description.downcase
munsters_description.upcase

# Question 5

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge! additional_ages

# Question 6

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min

# Question 7

advice = "Few things in life are as important as house training your pet dinosaur."

advice.match("dino")

# Question 8

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# *give up*
