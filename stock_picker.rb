# frozen_string_literal: true

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

print 'Type daily values, separated by whitespace (Negative or 0 values will be removed from final array): '
user_input = gets

array_of_values = user_input.split(' ').map(&:to_i)
array_of_values.delete(0)
array_of_values.reject(&:negative?)

result = stock_picker(array_of_values)

puts "The best day to buy is the day #{result[0]} and the best day to sell is the day #{result[1]}"
