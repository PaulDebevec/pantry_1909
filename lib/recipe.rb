class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] = amount
  end

  def total_calories
    total_cals = 0
    ingredient_keys_list = @ingredients_required.keys.flat_map do |ingredient|
      ingredient.calories
    end
    ingredient_values_list = @ingredients_required.values.flat_map do |amount|
      amount
    end
    ingredient_keys_list.each do |ingredient|
      multiplied_amount = ingredient * ingredient_values_list[0]
      ingredient_values_list.slice!(0)
      total_cals += multiplied_amount
    end
    total_cals
  end
end
