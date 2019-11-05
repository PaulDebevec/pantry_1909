require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'
require './lib/ingredient'

class RecipeTest < Minitest::Test

  def test_it_exists
    cheese = Ingredient.new("Cheese", "C", 100)
    mac = Ingredient.new("Macaroni", "oz", 30)
    mac_and_cheese = Recipe.new("Mac and Cheese")
    assert_instance_of Recipe, mac_and_cheese
  end
  
end
