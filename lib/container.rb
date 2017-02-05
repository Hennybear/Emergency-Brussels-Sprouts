require_relative 'ingredient.rb'

class Container
	attr_reader :maximum_holding_weight, :ingredients
	attr_reader :weight

	def initialize(weight, maximum_holding_weight)
		@weight = weight
		@maximum_holding_weight = maximum_holding_weight
		@ingredients = []
	end

	def fill_with_ingredient(ingredient)
		@ingredient = ingredient
		@weight = @weight + @maximum_holding_weight
		max_count = @maximum_holding_weight	/ @ingredient.weight
			until @ingredients.count == max_count
				@ingredients << @ingredient 
			end
	end

	def which_ingredient
		@ingredients[0].name
	end

	def how_many_ingredients
		@ingredients.count
	end

	def remove_one_ingredient
		@ingredients.pop
	end

	def empty
	end
	
end

