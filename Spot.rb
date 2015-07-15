require './solver'
require 'pry'

class Spot
  attr_accessor :value, :possible_values, :square, :row, :column
      # => nil
  def initialize(square)
    @value = 0                               # => [], [], [], [], [], [], [], [], []
    @possible_values = [1,2,3,4,5,6,7,8,9]
    @square = square
    @row = 0
    @column = 0
    @square_hash_of_possibilities = Hash.new
    @row_hash_of_possibilities = Hash.new
    @column_hash_of_possibilities = Hash.new
  end

  def update_value
    self.update_possible_values
    if possible_values.size == 1
      @value = possible_values[0]
    end
  end

  def update_possible_values
    if self.value != 0
      @possible_values = []
    else
      self.check_row
      self.check_column
      self.check_square
      # self.check_square_hash
      # self.check_row_hash
      # self.check_column_hash
    end
  end

  def check_square
    @square.spots.each do |row|
      row.each do |spot|
        if spot.value != 0
          @possible_values = @possible_values - [spot.value]
        end
      end
    end #find value in possible_values and remove it
  end

  def square_hash_of_possibilities
    square_hash = Hash.new
    @square.spots.each do |row|
      row.each do |spot|
        spot.possible_values.each do |value|
          if @square_hash_of_possibilities[value] == nil
            @square_hash_of_possibilities[value] = [spot]
          else
            @square_hash_of_possibilities[value] << spot
          end
        end
      end
    end
  end

  def check_square_hash
    self.square_hash_of_possibilities
    @square_hash_of_possibilities.each do |value, spots|
      if spots.size == 1
        spots[0].value = value
      end
    end
  end



  def check_row
    @row.row_spots.each do |spot|
      if spot.value != 0
        @possible_values = @possible_values - [spot.value]
      end
    end
  end

  def row_hash_of_possibilities
    row_hash = Hash.new
    @row.row_spots.each do |spot|
      spot.possible_values.each do |value|
        if row_hash[value] == nil
          row_hash[value] = [spot]
        else
          row_hash[value] << spot
        end
      end
    end
    row_hash
  end

  def check_row_hash
    self.row_hash_of_possibilities
    @row_hash_of_possibilities.each do |value, spots|
      if spots.size == 1
        spots[0].value = value
      end
    end
  end


  def check_column
    @column.column_spots.each do |spot|
      if spot.value != 0
        @possible_values = @possible_values - [spot.value]
      end
    end
  end

  def column_hash_of_possibilities
    column_hash = Hash.new
    @column.column_spots.each do |spot|
      spot.possible_values.each do |value|
        if column_hash[value] == nil
          column_hash[value] = [spot]
        else
          column_hash[value] << spot
        end
      end
    end
    column_hash
  end

  def check_column_hash
    self.column_hash_of_possibilities
    @column_hash_of_possibilities.each do |value, spots|
      if spots.size == 1
        spots[0].value = value
      end
    end
  end

end
