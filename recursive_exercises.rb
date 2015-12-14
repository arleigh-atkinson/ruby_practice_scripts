def factorial(n)
	if n == 1
		1
	else
		n * factorial(n-1)
	end
end

puts "factorial of 3: #{factorial(3)}"

def fib(n)											# almost
	if n == 0
		0
	else
		# n = n + n-1
		# # sum = n + fib(n-1)
		# # fib(n-1)
		# n + n-1
		# sum = nth + n-1th
		# n = fib(sum-1) 
	end
end

puts "3th in fib seq: #{fib(3)}"
# fibb(3)

def move(n)
	num_disks = n
	@towers = [[*1..n].reverse, [], []]
	if num_disks == 1
		@towers[target] << @towers[start].pop
		puts "Move disk from #{start} to #{target} : #{@towers}"
	else
		puts num_disks
	end
end

# move(1)

# def fibb(n)
# 	return 0 if n == 0
# 	x = 0
# 	y = 1
# 	(1..n).each do 
# 		sum = x + y
# 		x = y
# 		y = sum
# 	end
# 	puts y
# end



