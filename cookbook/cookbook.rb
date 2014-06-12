class Cookbook
	attr_accessor :title
	attr_reader :recipes
	
	def initialize(title)
		@title = title
		@recipes = []
	end

	def add_recipe(recipe)
		@recipes<<recipe
	end
end

class Recipe
	attr_accessor :title
	attr_accessor :ingredients
	attr_accessor :steps
	def initialize(title,ingredients,steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
end

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])

puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # Mexican Recipes

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.title # "Veggie Burrito"
p burrito.ingredients # ["tortilla", "tomatoes"]

mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito)
p mex_cuisine.recipes