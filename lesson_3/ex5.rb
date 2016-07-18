# Question 1

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

total_male_age = 0

munsters.select { |_, v| v['gender'] == 'male' }.each { |_, v| total_male_age += v['age'] }

puts total_male_age

# Question 2

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each { |k, v| puts "#{k} is a #{v['age']} year old #{v['gender']}." }

# Question 3

## Don't rely on methods that modify self like <<.  Use += and return the updated object.

# Question 4

sentence = "Humpty Dumpty sat on a wall."

puts sentence.split(/\W/).reverse.join(' ') + '.'

# Question 5

## 34, += does not modify self.

# Question 6

##  The data is hosed.  Remember that Numeric#+= modifies self, unlike String#+= or Array#+=

# Question 7

## Paper.

# Question 8

## No.
