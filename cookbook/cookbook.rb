class Cookbook
	attr_accessor :title
	attr_accessor :recipes
	
	def initialize(title)
		@title = title
		@recipes = []
	end

	def add_recipe(recipe)
		@recipes<<recipe
		puts "Added a recipe to the collection: #{recipe.title}"
	end

	def recipe_titles()
		@recipes.each { |x| puts x.title }
	end

	def recipe_ingredients()
		@recipes.each do |x|
			puts "These are the ingredients for the #{x.title}: #{x.ingredients}"
		end
	end

	def print_cookbook
		@recipes.each do |x|
			
			print "Title: #{x.title}\n"
			print "Ingredients: #{x.ingredients.join(', ')}\n"
			#print "Steps: #{x.steps.map { |k| "#{k.index}: #{k}" }.join("\n")}"
			indexCount = 1
			print "Steps:" + "\n"
			x.steps.each do |v|
				print "#{indexCount}: " + v + "\n"
				indexCount += 1
			end
		end
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

	def print_recipe
		print "Title: #{@title}\n"
		print "Ingredients: #{@ingredients.join(', ')}\n"
		print "Steps: #{@steps.join("\n")}"
	end
end