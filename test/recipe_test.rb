require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'
require './lib/ingredient'

class RecipeTest < Minitest::Test

  def test_it_exists
    mac_and_cheese = Recipe.new("Mac and Cheese")
    assert_instance_of Recipe, mac_and_cheese
  end

  def test_it_initializes
    mac_and_cheese = Recipe.new("Mac and Cheese")
    assert_equal "Mac and Cheese", mac_and_cheese.name
    assert_equal ({}), mac_and_cheese.ingredients_required
  end

  def test_it_adds_ingredient
    cheese = Ingredient.new("Cheese", "C", 100)
    mac = Ingredient.new("Macaroni", "oz", 30)
    mac_and_cheese = Recipe.new("Mac and Cheese")
    mac_and_cheese.add_ingredient(cheese, 2)
    mac_and_cheese.add_ingredient(mac, 8)
    assert_equal ({cheese => 2, mac => 8}), mac_and_cheese.ingredients_required
  end
end
