def prompt(msg)
  puts "=> #{msg}"
end

def valid_number?(num)
  (/^\d/ =~ num).is_a? Numeric
end

prompt 'Welcome to Payment Calculator'

amt = nil
while amt.nil?
  prompt 'Loan Amount:'
  amt = gets.chomp
  unless valid_number? amt
    prompt 'Invalid Number'
    amt = nil
  end
end

apr = nil
while apr.nil?
  prompt 'Interest Rate (APR):'
  apr = gets.chomp
  unless valid_number? apr
    prompt 'Invalid Number'
    apr = nil
  end
end

dur = nil
while dur.nil?
  prompt 'Loan Term in Months:'
  dur = gets.chomp
  unless valid_number? dur
    prompt 'Invalid Number'
    dur = nil
  end
end

# Formula: P = L[c(1 + c)^n]/[(1 + c)^n - 1] where L is is the amount in dollars, n is the term in months, and c is the monthly interest rate (APR / 12). 

L = amt.to_f
n = dur.to_f
c = apr.to_f
c /= 100 if c >= 1
c /= 12
P = (L * (c * ((1 + c)**n))) / (((1 + c)**n) - 1)

prompt "You'll pay $#{P.round(2)} per month."
