require 'minitest/autorun'
require_relative 'sudoku'
require 'pry'

class SpotTest < Minitest::Test
  def test_a_spot_defaults_all_possible_values
    my_spot = Spot.new(0)
    assert_equal [1,2,3,4,5,6,7,8,9], my_spot.possible_values
  end
  def test_a_spot_defaults_no_value
    my_spot = Spot.new(0)
    assert_equal 0, my_spot.value
  end

  def test_a_spot_can_reference_its_square
    solver = Solver.new("input.txt")
    assert_equal solver.board.squares[0][0],
        solver.board.squares[0][0].spots[0][0].square
  end

  def test_a_spot_can_reference_its_row #Breaks minitest
    solver = Solver.new("input.txt")
    assert_equal solver.rows[0],
        solver.board.squares[0][0].spots[0][0].row
  end

  def test_a_spot_can_reference_its_column

    solver = Solver.new("input.txt")
    assert_equal solver.columns[0],
        solver.board.squares[0][0].spots[0][0].column
  end

  def test_updates_possible_values_from_square
    skip
    solver = Solver.new("input.txt")
    solver.board.squares[0][0].spots[0][0].check_square
    assert_equal [1,2,3,4,6,7], solver.board.squares[0][0].spots[0][0].possible_values
  end

  def test_updates_possible_values_from_row
    skip
    solver = Solver.new("input.txt")
    solver.board.squares[0][0].spots[0][0].check_row
    assert_equal [1,2,3,6,9], solver.board.squares[0][0].spots[0][0].possible_values
  end

  def test_updates_possible_values_from_column
    skip
    solver = Solver.new("input.txt")
    solver.board.squares[0][0].spots[0][0].check_column
    assert_equal [3,4,5,7,9], solver.board.squares[0][0].spots[0][0].possible_values
  end

  def test_updates_possible_values
    skip
    solver = Solver.new("input.txt")
    solver.board.squares[0][0].spots[0][0].update_possible_values
    assert_equal [], solver.board.squares[0][0].spots[0][0].possible_values
  end

  def test_updates_possible_values_2
    skip
    solver = Solver.new("input.txt")
    solver.board.squares[0][0].spots[0][1].update_possible_values
    assert_equal [1,2,6], solver.board.squares[0][0].spots[0][1].possible_values
  end

  def test_creates_hash_of_possibilities_from_row
    solver = Solver.new("input.txt")
     hash = solver.board.squares[0][0].spots[0][1].row_hash_of_possibilities
     assert_equal 9, hash.size
  end

  def test_creates_hash_of_possibilities_from_column
    solver = Solver.new("input.txt")
     hash = solver.board.squares[0][0].spots[0][1].column_hash_of_possibilities
     assert_equal 9, hash.size
  end

  def test_creates_hash_of_possibilities_from_square

    solver = Solver.new("input.txt")
     hash = solver.board.squares[0][0].spots[0][1].square_hash_of_possibilities
     assert_equal 9, hash.size
  end

#Doesn't work with update_possible_values
  # def test_updates_value
  #   solver = Solver.new("input.txt")
  #   spot_1 = solver.board.squares[0][0].spots[0][1]
  #   spot_1.possible_values = [5]
  #   spot_1.update_value
  #   assert_equal 5, solver.board.squares[0][0].spots[0][1].value
  # end

end
class SquareTest < Minitest::Test
  def test_a_square_creates_9_spots
    my_square = Square.new
    assert_equal 3, my_square.spots.size
    assert_equal Spot, my_square.spots[0][0].class
    assert_equal Spot, my_square.spots[2][2].class
    #assert_equal 1, my_square.spots[0][0].square
  end
end
class BoardTest < Minitest::Test
  def test_a_board_creats_9_squares
    my_board = Board.new
    assert_equal 3, my_board.squares.size
    assert_equal Square, my_board.squares[0][0].class
    assert_equal Square, my_board.squares[2][2].class
  end
end
class ColumnTest < Minitest::Test
  def test_column_0_finds_squares_that_contain_it
    column_zero = Column.new(0,Board.new)
    assert_equal 3, column_zero.column_squares.size
    assert_equal column_zero.my_board.squares[0][0], column_zero.column_squares[0]
  end
  def test_column_6_finds_squares_that_contain_it
    column_six = Column.new(6,Board.new)
    assert_equal 3, column_six.column_squares.size
    assert_equal column_six.my_board.squares[0][2], column_six.column_squares[0]
  end
  def test_column_0_finds_spots_that_contain_it
    column_zero = Column.new(0,Board.new)
    assert_equal 9, column_zero.column_spots.size
    assert_equal column_zero.my_board.squares[0][0].spots[0][0],
                                                column_zero.column_spots[0]
  end
  def test_column_6_finds_spots_that_contain_it
    column_six = Column.new(6,Board.new)
    assert_equal 9, column_six.column_spots.size
    assert_equal column_six.my_board.squares[0][2].spots[0][0],
                                                column_six.column_spots[0]
  end
end

class RowTest < Minitest::Test

  def test_row_0_finds_squares_that_contain_it
    row_zero = Row.new(0,Board.new)
    assert_equal 3, row_zero.row_squares.size
    assert_equal row_zero.my_board.squares[0][0], row_zero.row_squares[0]
  end
  def test_row_6_finds_squares_that_contain_it
    row_six = Row.new(6,Board.new)
    assert_equal 3, row_six.row_squares.size
    assert_equal row_six.my_board.squares[2][0], row_six.row_squares[0]
  end

  def test_row_0_finds_spots_that_contain_it
    row_zero = Row.new(0,Board.new)
    assert_equal 9, row_zero.row_spots.size
    assert_equal row_zero.my_board.squares[0][0].spots[0][0],
                                                row_zero.row_spots[0]
  end
  def test_row_6_finds_spots_that_contain_it
    row_six = Row.new(6,Board.new)
    assert_equal 9, row_six.row_spots.size
    assert_equal row_six.my_board.squares[2][0].spots[0][0],
                                                row_six.row_spots[0]
  end
end

class SolverTest < Minitest::Test

#Doesn't work after self.converts_input_to_arrays in initialize
  # def test_it_loads_the_file
  #   solver = Solver.new("input.txt")
  #   assert_equal "8  5 4  7\n", solver.input_file.readline
  # end


#Doesn't work after self.converts_input_arrrays_to_nested_array in initialize
  # def test_it_created_an_array_from_readlines
  #   solver = Solver.new("input.txt")
  #   #solver.converts_input_to_arrays
  #   assert_equal "8  5 4  7\n", solver.input.first
  # end

#Doesn't work after self.makes_nested_arrays_9_elements_long
  # def test_it_has_nested_arrays
  #   solver = Solver.new("input.txt")
  #   #solver.converts_input_to_arrays
  #   #solver.converts_input_arrrays_to_nested_array
  #   assert_equal ["8", " ", " ", "5", " ", "4", " ", " ", "7", "\n"], solver.input.first
  # end

  def test_it_makes_nested_arrays_9_elements_long
    solver = Solver.new("input.txt")
    #solver.converts_input_to_arrays
    #solver.converts_input_arrrays_to_nested_array
    #solver.makes_nested_arrays_9_elements_long
    assert_equal ["8", " ", " ", "5", " ", "4", " ", " ", "7"], solver.input.first
  end
  def test_it_makes_nested_arrays_9_elements_long_2
    solver = Solver.new("input.txt")
    #solver.converts_input_to_arrays
    #solver.converts_input_arrrays_to_nested_array
    #solver.makes_nested_arrays_9_elements_long
    assert_equal [" ", " ", "5", " ", "3", " ", "9", " ", " "], solver.input[1]
  end

  def test_it_creates_9_rows
    solver = Solver.new("input.txt")
    assert_equal 9, solver.rows.length
    assert_equal solver.rows[1].class, Row
  end

  def test_it_creates_9_columns
    solver = Solver.new("input.txt")
    assert_equal 9, solver.columns.length
    assert_equal solver.columns[1].class, Column
  end

  def test_solver_maps_spots_to_rows
    solver = Solver.new("input.txt")
    #binding.pry
    assert_equal solver.board.squares[0][0].spots[0][0], solver.rows[0].row_spots[0]
  end

  def test_it_maps_values_to_spots
    solver = Solver.new("input.txt")
    #assert_equal "8", solver.board.squares[0][0].spots[0][0].value
    assert_equal 8, solver.rows[0].row_spots[0].value
  end

  def test_it_maps_values_to_spots_2
    solver = Solver.new("input.txt")
    #assert_equal "8", solver.board.squares[0][0].spots[0][0].value
    assert_equal 1, solver.rows[3].row_spots[0].value
  end

  def test_it_solves_easy_puzzles
    solver = Solver.new("input.txt")
    #binding.pry
    assert_equal 2, solver.rows[0].row_spots[1].value
  end

  def test_it_creates_a_solved_array
    solver = Solver.new("input.txt")
    assert_equal [8,2,6,5,9,4,3,1,7], solver.solved_puzzle[0]
  end

end
