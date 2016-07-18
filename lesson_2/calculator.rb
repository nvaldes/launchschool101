def prompt(msg)
  puts "=> #{msg}"
end

def valid_number?(num)
  (/^\d/ =~ num).is_a? Numeric
end

prompt 'Welcome to Calculator!'

loop do
  num1 = nil
  while num1.nil?
    prompt 'First Number:'
    num1 = gets.chomp
    unless valid_number? num1
      prompt 'Invalid Number'
      num1 = nil
    end
  end

  num2 = nil
  while num2.nil?
    prompt 'Second Number:'
    num2 = gets.chomp
    unless valid_number? num2
      prompt 'Invalid Number'
      num2 = nil
    end
  end

  prompt 'Select Operator: 1) Add, 2) Subtract, 3) Multiply, 4) Divide'

  op = nil
  result = nil

  while op.nil?
    op = gets.chomp.downcase
    result =  case op
              when '1', 'add', '+'
                num1.to_f + num2.to_f
              when '2', 'subtract', '-'
                num1.to_f - num2.to_f
              when '3', 'multiply', 'x', '*'
                num1.to_f * num2.to_f
              when '4', 'divide', '/'
                num1.to_f / num2.to_f
              else
                puts 'Operation not recognized, please try again.'
                op = nil
              end
  end

  prompt "The result is #{result}"

  prompt 'Do you want to perform another calculation? (y/n)'
  answer = gets.chomp.downcase
  break unless answer.start_with? 'y'
end

prompt 'Thank you for using Calculator!'
