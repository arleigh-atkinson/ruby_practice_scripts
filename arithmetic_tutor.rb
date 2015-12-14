class Question
	def initialize(question, answer)
		@question = question
		@answer = answer
	end

	attr_accessor :question, :answer

	def self.make_addition
		numbers = random_nums
		Question.new(numbers, addition(numbers))
		print "What is #{numbers[0]} + #{numbers[1]}? "
		addition(numbers)
	end

	def self.make_subtraction
		numbers = random_nums
		Question.new(numbers, addition(numbers))
		print "What is #{numbers[0]} - #{numbers[1]}? "
		subtraction(numbers)
	end


end

###########################
# Some helper methods
def random_nums
	arr = []
	arr[0] = (1..9).to_a.sample
	arr[1] = (1..9).to_a.sample
	arr
end

def addition(num_array)
	(num_array[0] + num_array[1]).to_s
end

def subtraction(num_array)
	(num_array[0] - num_array[1]).to_s
end

def check_answer(user_answer, problem)
	if user_answer == problem
		puts 'Correct!'
		true
	else
		puts 'Incorrect!'
	end
end


def menu
	puts 'Welcome to the Ruby Arithmetic Tutor'
	print 'What is your name? '
	user_name = gets.chomp

	puts "Hello, #{user_name}"
	puts "Press enter to begin the quiz!"
	user_enter = gets.chomp
end


#####################
#   Main Program		#
#####################

def main_program
	user_score = 0
	menu 

	5.times do
		problem1 = Question.make_addition
		user_answer1 = gets.chomp
		# check_answer(user_answer1, problem1)
		if check_answer(user_answer1, problem1)
			user_score += 1
		end

		puts "Current Score: #{user_score}\n"

		problem2 = Question.make_subtraction
		user_answer2 = gets.chomp

		if check_answer(user_answer2, problem2)
			user_score += 1
		end


		puts "Current Score: #{user_score}\n"
	end

	puts "Your final score is #{user_score} out of 10"
end

main_program


