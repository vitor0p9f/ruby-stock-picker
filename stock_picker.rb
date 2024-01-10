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
  result = []
  best_profit = 0

  loop do
    smallest_value = new_array.min
    index_of_smallest_value = new_array.index(smallest_value)

    new_array.slice(index_of_smallest_value..).each do |value|
      profit = value - smallest_value

      next unless profit > best_profit

      best_profit = profit
      result[0] = index_of_smallest_value
      result[1] = new_array.index(value)
    end

    new_array.delete(smallest_value)

    return result if new_array.empty?
  end
end

print stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
puts
