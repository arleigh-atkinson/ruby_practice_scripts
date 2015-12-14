# CURB CRUD -

# basic goals:
# 1) figure out how to use the CURB gem to make HTTP requests (https://github.com/taf2/curb)
# 2) write a ruby script that runs in a loop with a menu
# 3) make the menu have these options:
#      1) list all users
#      2) list a single user
#      3) create a user
#      4) edit a user
#      5) destroy a user
# 4) use http://devpoint-ajax-example-server.herokuapp.com/api/v1/users

# USERS API:

#  GET /users - lists all users
#     GET /users/id - lists a single user
#     POST /users
#       POST DATA:
#         user[first_name] - required
#         user[last_name] - required
#         user[phone_number] - optional  

require 'curb'
require 'json'
require 'pry'


def base_url
	base_url = "http://devpoint-ajax-example-server.herokuapp.com/api/v1/users"
end

def all_users
	c = Curl::Easy.perform(base_url)
	c_hash = JSON.parse(c.body_str)
	binding.pry
	puts c_hash
end

def single_user
	c = Curl::Easy.perform(base_url)
	c_hash = JSON.parse(c.body_str)
	http = Curl.get('user[id]')
	puts http.body_str
end

def create_user(input_first_name, input_last_name, input_phone_number)
	c = Curl::Easy.http_post(base_url,
                 Curl::PostField.content('user[first_name]', input_first_name),
                 Curl::PostField.content('user[last_name]', input_last_name)),
								 Curl::PostField.content('user[last_name]', input_phone_number))
end

def edit_user(input_first_name, input_last_name)
	puts 'Not done yet'
end

def destroy_user(input_first_name, input_last_name)
	c = Curl::Easy.perform(base_url)
	c_hash = JSON.parse(c.body_str)
	binding.pry
	c_hash.delete([:id] == 445)
	puts c_hash

end

# c = Curl::Easy.http_post("http://my.rails.box/thing/create",
#                          Curl::PostField.content('thing[name]', 'box'),
#                          Curl::PostField.content('thing[type]', 'storage'))
# puts c

def menu
	puts "Please choose an option: "
	puts """
			1. List all users
			2. List a single user 
			3. Create a user
			4. Edit a user
			5. Delete a user
			6. Exit
			"""
end

def main_program
	loop do 
		puts menu 
		user_choice = gets.chomp
		break if user_choice == '6'

		case user_choice
			when '1'
				all_users
			when '2'
				single_user
			when '3'
				puts "Enter first name: "
				first_name = gets.chomp
				puts "Enter last name: "
				last_name = gets.chomp
				puts "Enter phone number: "
				phone_number = gets.chomp
				create_user(first_name, last_name, phone_number)
			when '4'
				puts "Enter first name: "
				first_name = gets.chomp
				puts "Enter last name: "
				last_name = gets.chomp
			when '5'
				# puts "Enter first name: "
				# first_name = gets.chomp
				# puts "Enter last name: "
				# last_name = gets.chomp
				destroy_user(first_name, last_name)
		end
	end
end

main_program






