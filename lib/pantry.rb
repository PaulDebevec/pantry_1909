class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(item)
    @stock[item]
  end

  def restock(item, amount)
    @stock[item] += amount
  end

# I worked on this for a while, but was unable to grab exactly what I wanted.
# Truth is I'm not exactly sure if I was even on the right path for pulling the information.
# ********************************************
  # def all_ingredients_in_recipe_name(recipe)
  #   all_names = recipe.ingredients_required.flat_map do |ingredient|
  #     ingredient[0].name
  #   # require'pry';binding.pry
  #   end
  #     all_names
  # end
  #
  # def all_ingredients_in_recipe_count(recipe)
  #   all_count = recipe.ingredients_required.flat_map do |ingredient|
  #     ingredient[1]
  #   end
  #     all_count
  # end
  #
  # def enough_ingredients_for?(recipe)
  #   kosher = all_ingredients_in_recipe_count(recipe).flat_map do |ing_obj|
  #     require'pry';binding.pry
  #       stock_check(ing_obj) >= all_ingredients_in_recipe_count(recipe)
  #   end
  #   # kosher
  # end
end
