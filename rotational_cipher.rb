# A rotational cipher, ROT(X), is an ancient encoding that, given a message, returns a message where each letter has been replaced by the letter exactly X letters after it in the alphabet ordering. Letters near the end of the alphabet wrap around. For example, the translation table for ROT(13) looks like:

# ABCDEFGHIJKLMNOPQRSTUVWXYZ
# NOPQRSTUVWXYZABCDEFGHIJKLM
# and therefore the message HELLO becomes URYYB

# Please implement rotx in Ruby, which given a rotation number and a string, outputs the string rotated by that many letters. It should preserve capitalization and ignore any non-alphabetic character. It should also take a parameter that decrypts the string instead of encrypting it. For example:

# def rotx(x, string, encrypt=true)
#   # Your implementation here...
# end

# rotx 10, 'Hello, World'
# # => "Rovvy, Gybvn"
# rotx 10, 'Rovvy, Gybvn', false
# # => "Hello, World"

# # Rotation numbers greater than 26 should work as well
# rotx 36, 'Hello, World'
# # => "Rovvy, Gybvn"

def rot(x, string, encrypt = true)
	letters = ('A'..'Z').to_a
	letters_length = letters.length 
	output_text = ''
	string.each_char{ |chr|	
		output_text << chr && next if chr.match(/^[a-zA-Z]+$/).nil? 
		rot_idx = encrypt ? (letters.index(chr.upcase) + x) : (letters.index(chr.upcase) - x)
		output_idx = (rot_idx <= (letters_length - 1)) ? rot_idx : (rot_idx % letters_length)
		output_text <<  ((chr.match(/[[:upper:]]/).nil?) ? letters[output_idx].downcase : letters[output_idx])
	}
	return output_text
end

puts "Ciphering......"
puts rot(10, "Hello, World")
puts "DeCiphering......"
puts rot(10, "Rovvy , Gybvn", false)