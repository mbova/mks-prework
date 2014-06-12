cost_of_groceries = {
  "milk" => 3.50,
  "egg" => 1.50,
  "broccolli" => 0.75
}
cost_of_groceries["spinach"] = 2.10

cost_of_groceries.each do |key,value|
	if value < 2
		puts "#{key} is less than $2"
	else
		puts "#{key} is more than $2"
	end
end

class Car
	attr_reader :color
	attr_reader :repaint_count
	def initialize(color)
		@color = color
		@repaint_count = 0
	end
	
	def paint(new_color)
		@new_color = new_color
		@color = @new_color
		@repaint_count += 1
	end

end

c = Car.new("blue")
puts c.color # blue
puts c.repaint_count # 0
c.paint("red")
c.paint("green")
puts c.repaint_count # 2
puts c.color # green