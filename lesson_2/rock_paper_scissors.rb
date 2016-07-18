OPTIONS = {
  rock: %w(scissors lizard),
  paper: %w(rock spock),
  scissors: %w(paper lizard),
  lizard: %w(paper spock),
  spock: %w(rock scissors)
}

VALID_CHOICES = OPTIONS.keys

score = [0, 0]

def prompt(msg)
  puts "=> #{msg}"
end

def win?(first, second)
  OPTIONS[first].include? second.to_s
end

loop do
  choice = nil
  while choice.nil?
    prompt "Choose One: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp.to_sym
    unless VALID_CHOICES.include? choice
      prompt 'Invalid Choice'
      choice = nil
    end
  end

  computer = VALID_CHOICES.sample

  prompt "You chose #{choice} | Computer chose #{computer}"

  if choice == computer
    prompt "It's a tie!  Score is #{score.join('-')}"
  elsif win? choice, computer
    score[0] += 1
    prompt "You Won!  Score is #{score.join('-')}"
  else
    score[1] += 1
    prompt "You Lose!  Score is #{score.join('-')}"
  end

  prompt 'Play again? (y/n)'
  ans = gets.chomp
  break unless ans.downcase.start_with? 'y'
end

prompt 'Thank you for playing!'
