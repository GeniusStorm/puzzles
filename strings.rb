# # Write an efficient function to find the first non repeated characters in the string


# def first_non_repeated_char(str)
#  visited_char = Hash.new
#  missing_char = ''
#  visited_char.default = 0
#  str.each_char do |chr|
#    visited_char[chr] = visited_char[chr] + 1
#  end
#  visited_char.each do |k,v|
#  	if visited_char[k] == 1
#      missing_char = "The non repeated char is #{k}" 
#      break
#     end
#  end 
# end

# first_non_repeated_char("twitter")
 
#  PROBLEM Write an efficient function that deletes characters from an ASCII string. Use the prototype
# string removeChars( string str, string remove );
# where any character existing in remove must be deleted from str. 
# For example, givenastrof"Battle of the Vowels: Hawaii vs. Grozny"andaremoveof "aeiou",thefunctionshouldtransformstrto“Bttl f th Vwls: Hw vs. Grzny”. 
# Justify any design decisions you make, and discuss the efficiency of your solution.
           
	# def removeChars(str, remchars)

	# 	new_str =""
	# 	str.each_char do |chr|
	# 	  char_flag = 0
	# 	  remchars.each_char do |r_chr|
	# 	  	char_flag = 1 if r_chr == chr 
	# 	  end
	# 	  char_flag == 1 ? next : (new_str = new_str + chr)
	# 	end
	# 	return new_str

	# end

	# removeChars("Battle of the Vowels: Hawaii vs. Grozny", "aeiou")

	# PROBLEM Write a function that reverses the order of the words in a string. 
	# For example, your function should transform the string "Do or do not, there is no try" to "try no is there not, do or Do". 
	# Assume that all words are space delim- ited and treat punctuation the same as letters.
    
    # def string_reverse(str)
    # 	word_arry = str.split(' ');
    # 	reversed_string = '';
    # 	(word_arry.length - 1).step(0, -1) do | idx |
    # 		reversed_string += word_arry[idx] + " "
    # 	end
    #     return reversed_string
    # end




    # string_reverse("Do or do not, there is no try")
