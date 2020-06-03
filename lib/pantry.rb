class Pantry

  attr_reader :stock
  def initialize
    @stock = {}
  end

  def stock_check(ingredient)
    @stock[ingredient] = {} if @stock[ingredient].nil?
    @stock[ingredient].values.sum
  end
end
