# encryptor
#   1 - write a ruby script that takes in 2 arguements - a key(int) and a string to encrypt(string) 
#   2 - encrypt the string with random letters in between each character based off of the key

#   example - encrypt(2, 'hello')
#   output - hdkelxslieo


  def encrypt(input_string)
  	alphabet_array = [1, 2, 3, 4]
  	input_string = input_string.split('')
  	encrypt_string = []
  	i = 0
  	j = 0

  	while j < input_string.length
  		encrypt_string[i] =  input_string[j] 
  		encrypt_string[i+1] == alphabet_array.sample
  		encrypt_string[i+2] == alphabet_array.sample
  	  i += 1
  		j += 1
  	end

  	encrypt_string
  end

encrypt('hello')
