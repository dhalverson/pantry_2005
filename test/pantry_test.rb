require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cook_book'

class PantryTest < Minitest::Test

  def test_it_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_it_can_stock_check
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    pantry = Pantry.new

    assert_equal ({}), pantry.stock
    assert_equal 0, pantry.stock_check(ingredient1)
  end

  def test_it_can_restock
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    pantry = Pantry.new

    assert_equal ({}), pantry.stock
    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)

    assert_equal 15, pantry.stock_check(ingredient1)
    pantry.restock(ingredient2, 7)

    assert_equal 7, pantry.stock_check(ingredient2)
  end
end
