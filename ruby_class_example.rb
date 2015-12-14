################################
# Class Example								 #
################################
class Person
	attr_accessor :name, :bank
	def initialize(name, bank)
		@name = name
		@bank = bank
		greeting
	end

	def greeting
		puts "Hey there #{@name} with #{@bank} amount of money!"
	end
end

puts "What is your name?"
user_name = gets.strip

puts "How much do you have to play with?"
user_bank = gets.strip

Person.new(name = user_name, bank = user_bank)

###############################
# Module Example              #
###############################
module Casino
	def get_name
		puts "What is your name?"
		name = gets.strip
	end

	def get_amt
		puts "How much do you have to play with?"
		bank = gets.strip
	end

	def greeting(name, bank)
		puts "Hey #{name} with $#{bank}"
	end
end

class Person
	attr_accessor :name, :bank
	def initialize(name, bank)
		@name = name
		@bank = bank
	end
end

def casino_game
	include Casino
	user_name = CasinoStuff.get_name
	user_bank = CasinoStuff.get_amt
	user = Person.new(name = user_name, bank = user_bank)
	CasinoStuff.greeting(user.name, user.bank)
end

casino_game
