class Ingredient
	attr_reader :name, :weight

	def initialize(name, weight)
		@name = name
		@weight = weight
	end

	def self.create_from_grams(new_name, weight_grams)
		name = new_name
		weight = weight_grams / 1000
		Ingredient.new(name, weight)
	end
	
end