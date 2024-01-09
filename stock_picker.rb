# frozen_string_literal: true

def find_best_day_to_buy(array)
  {
    value: array.min,
    index: array.index(array.min)
  }
end

def find_best_day_to_sell(array)
  {
    value: array.max,
    index: array.index(array.max)
  }
end

def stock_picker(array)
  new_array = array.clone

  loop do
    day_to_sell = find_best_day_to_sell(new_array)
    day_to_buy = find_best_day_to_buy(new_array)

    unless day_to_buy[:index] > day_to_sell[:index]
      return [array.index(day_to_buy[:value]),
              array.index(day_to_sell[:value])]
    end

    new_array.delete(day_to_sell[:value])
    new_array.delete(day_to_buy[:value])
  end
end

print stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
puts
