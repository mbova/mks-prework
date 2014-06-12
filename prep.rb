groceries = ["milk", "eggs", "broccoli"]
groceries.push("spinach")
groceries.each {|x| puts "I need to buy #{x}."}

cost_of_groceries = {
	"milk" => 3.50,
	"egg" => 1.50,
	"broccoli" => 0.75,
}

cost_of_groceries["spinach"] = 1.50
puts cost_of_groceries["spinach"]

cost_of_groceries.each { 
	|x,y| puts cost_of_groceries[y] < 2 "#{cost_of_groceries[x]} is less than $2" : "#{cost_of_groceries[y]} is more than $2"
}
