class CookBook

  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.flat_map do |recipe|
      recipe.ingredients.map { |ingredient| ingredient.name}
    end.uniq
  end

  def highest_calorie_meal
    @recipes.map do |recipe|
      require "pry"; binding.pry
      recipe.total_calories
    end
  end
end
