class Cookbook
	attr_reader :title
	def initialize(title)
		@title = title
	end
end

class Recipe
	attr_reader :title
	attr_reader :ingredients
	attr_reader :steps
	def initialize(title,ingredients,steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
end