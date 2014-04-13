# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?


# Logic : 
# 13195/5 = 2639,
# 2639/7  = 377,
# 377/13  = 29,
# 29/29   = 1, done.

def largest_prime_factor(num)
	i=2 
	quotient = 0
	while(quotient != 1) do
		i +=1
		if(is_prime?(i) && (num % i == 0))
			divisor = quotient == 0 ? num : quotient
			quotient = divisor / i
		end	
	end
	return i 
end

def is_prime?(num)
    (2..Math.sqrt(num).ceil).each { |x|
		return false if num % x == 0
	}
	return true
end

p largest_prime_factor(600851475143)
