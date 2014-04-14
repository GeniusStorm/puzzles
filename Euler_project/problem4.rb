#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palidrome_product(size)
	raise "Size must be greater that zero" if size < 1
	palindrome_product = 0;
	upper_limit_arry = Array.new(size, 10)
	lower_limit_arry = Array.new(size-1 , 10)
	upper_limit = upper_limit_arry.inject(:*) - 1
	lower_limit = lower_limit_arry.inject(:*)
	upper_limit.downto(lower_limit).each do | num |
		num.downto(lower_limit).each do | x |
		palindrome_product = x * num if is_palindrome?(x * num) && palindrome_product < x * num
		end
	end
	palindrome_product
end

def is_palindrome?(num)
	num.to_s.reverse == num.to_s
end

p largest_palidrome_product(2)

#906609