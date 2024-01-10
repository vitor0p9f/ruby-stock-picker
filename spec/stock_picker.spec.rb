# frozen_string_literal: true

require_relative 'spec_helper'
require_relative '../stock_picker'

RSpec.describe 'Stock Picker project' do
  it 'should return an array with two positions, the first being the best day to buy and the second,
  the best day to sell' do
    response = stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])

    # Days start at 0
    expect(response).to eq [1, 4]
  end

  it 'should work with a different array' do
    response = stock_picker([17, 15, 35, 23, 4, 123, 4, 6, 2, 51])

    # Days start at 0
    expect(response).to eq [4, 5]
  end

  it 'should work when the best day to profit is the last day of array' do
    response = stock_picker([3, 2, 1])

    # Days start at 0
    expect(response).to eq [2, 2]
  end
end
