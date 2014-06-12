# Fibonacci Fun

def fibCreator(x,y)
	a = 0
	b = 1
	fibArray = []

	while a + b < y
		c = a + b
		if c > x
			fibArray.push(c)
		end
		a = b
		b = c
	end
	
	puts fibArray
end

puts "Please enter the low limit of your Fibonacci sequence"
x = gets.chomp.to_i
puts "Please enter the high limit of your Fibonacci sequence"
y = gets.chomp.to_i

fibCreator(x,y)