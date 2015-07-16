require './board'
require 'pry'

class Solver                    # => nil # => nil

  def initialize(puzzle)
    @input_file = File.open("./#{puzzle}", "r")  # ~> Errno::ENOENT: No such file or directory @ rb_sysopen - ./input.txt
    @output_file = File.open("./output.txt", "w")
    @input = []
    @rows = []
    @columns = []
    @solved_puzzle = []
    @board = Board.new
    @all_spots = []
    self.converts_input_to_arrays
    self.converts_input_arrays_to_nested_array
    self.makes_nested_arrays_9_elements_long
    self.creates_rows
    self.creates_columns
    self.create_all_spots_holder
    self.maps_input_values_to_spots
    self.updates_all_spots
    self.create_solved_values_array
    self.write_solution_to_output_file
  end

  def creates_rows
    9.times do |index|
      @rows << Row.new(index, @board)
    end
  end

  def creates_columns
    9.times do |index|
      @columns << Column.new(index, @board)
    end
  end

  def converts_input_to_arrays
    @input_file.rewind
    input = []
    9.times do
      @input << @input_file.readline
    end
  end

  def converts_input_arrays_to_nested_array
    @input = @input.map do |line|
      line.chars
    end
  end

  def makes_nested_arrays_9_elements_long
    @input = @input.each do |line|
      if line.last == "\n"
        line.pop
      elsif line.size > 9
        line.pop
      end

      until line.size == 9 do
        line << " "
      end

    end
  end

  def maps_input_values_to_spots
    for row in 0..8
      for element in 0..8
        @rows[row].row_spots[element].value = @input[row][element].to_i
      end
    end
  end

  def create_all_spots_holder
    0.upto(8) do |row|
      0.upto(8) do |element|
        @all_spots << @rows[row].row_spots[element]
      end
    end
  end

  def updates_all_spots
    20.times do
      10.times do
        @all_spots.each {|spot| spot.update_value }
      end
      @all_spots.each do |spot|
          spot.check_square_hash
          spot.check_row_hash
          spot.check_column_hash
      end
    end
  end

  def create_solved_values_array
    for row in 0..8
      @solved_puzzle << []
      for element in 0..8
        @solved_puzzle[row] << @rows[row].row_spots[element].value
      end
    end
  end

  def write_solution_to_output_file
    @solved_puzzle.each do |line|
      string_1 = line.reduce('') do |string, value|
        string + value.to_s
      end
      @output_file.write("#{string_1}\n")
    end
  end
end





#solver = Solver.new("input.txt")

# ~> Errno::ENOENT
# ~> No such file or directory @ rb_sysopen - ./input.txt
# ~>
# ~> /Users/ryan/Turing/homework/Robodoku/Solver.rb:5:in `initialize'
# ~> /Users/ryan/Turing/homework/Robodoku/Solver.rb:5:in `open'
# ~> /Users/ryan/Turing/homework/Robodoku/Solver.rb:5:in `initialize'
# ~> /Users/ryan/Turing/homework/Robodoku/Solver.rb:71:in `new'
# ~> /Users/ryan/Turing/homework/Robodoku/Solver.rb:71:in `<main>'
