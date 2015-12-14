# Encryptor
#   1 - write a ruby script that takes in 2 arguements - a key(int) and a string to encrypt(string) 
#   2 - encrypt the string with random letters in between each character based off of the key

#   example - encrypt(2, 'hello')
#   output - hdkelxslieo

# Encrypt a String
def encrypt(key, input_string)
	alphabet_array = ('a'..'z').to_a
	input_string = input_string.split('')
	encrypt_string = []
	i = 0
	j = 0
	while j < input_string.length
		encrypt_string[i] =  input_string[j]
		j += 1
		break if j == input_string.length
		key.times do
			i += 1
			encrypt_string[i] = alphabet_array.sample
		end
	  i += 1
	end
	encrypt_string.join
end

# Decrypt a String
def decrypt(key, encrypted_string)
	encrypted_string = encrypted_string.split('')
	decrypted_string = []
	decrypted_string[0] = encrypted_string[0]
	i = 0
	j = 1
	while i < encrypted_string.length
		i += key+1
		decrypted_string[j] = encrypted_string[i]
		j += 1
	end
	decrypted_string.join
end

# Main Program
def main_program
	print 'Enter a string to encrypt: '
	user_string = gets.chomp

	print 'Enter a key for encryption: '
	user_key = gets.chomp.to_i

	user_encrypt = encrypt(user_key, user_string)
	puts 'Encrypted string: ' + user_encrypt

	puts 'Decrypted string: ' + decrypt(user_key, user_encrypt)

end

main_program

