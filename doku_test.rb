require 'minitest/autorun'
require_relative 'sudoku'
require 'pry'

class SpotTest < Minitest::Test
  def test_a_spot_defaults_all_possible_values
    my_spot = Spot.new
    assert_equal [1,2,3,4,5,6,7,8,9], my_spot.possibille_values
  end
  def test_a_spot_defaults_no_value
    my_spot = Spot.new
    assert_equal [], my_spot.value
  end
end
class SquareTest < Minitest::Test
  def test_a_square_creates_9_spots
    my_square = Square.new
    assert_equal 3, my_square.spots.size
    assert_equal Spot, my_square.spots[0][0].class
    assert_equal Spot, my_square.spots[2][2].class
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
    column_zero = Column.new(0)
    col_squares = column_zero.find_squares_that_contain_column
    assert_equal 3, col_squares.size
    assert_equal column_zero.my_board.squares[0][0], col_squares[0]
  end
  def test_column_6_finds_squares_that_contain_it
    column_six = Column.new(6)
    col_squares = column_six.find_squares_that_contain_column
    assert_equal 3, col_squares.size
    assert_equal column_six.my_board.squares[0][2], col_squares[0]
  end
  def test_column_0_finds_spots_that_contain_it
    column_zero = Column.new(0)
    col_squares = column_zero.find_squares_that_contain_column
    column_spots = column_zero.find_spots_that_contain_column(col_squares)
    assert_equal 9, column_spots.size
    assert_equal column_zero.my_board.squares[0][0].spots[0][0],
                                                column_spots[0]
  end
  def test_column_6_finds_spots_that_contain_it
    column_six = Column.new(6)
    col_squares = column_six.find_squares_that_contain_column
    column_spots = column_six.find_spots_that_contain_column(col_squares)
    assert_equal 9, column_spots.size
    #binding.pry
    assert_equal column_six.my_board.squares[0][2].spots[0][0],
                                                column_spots[0]
  end
end

class RowTest < Minitest::Test

  def test_row_0_finds_squares_that_contain_it
    row_zero = Row.new(0)
    row_squares = row_zero.find_squares_that_contain_row
    assert_equal 3, row_squares.size
    assert_equal row_zero.my_board.squares[0][0], row_squares[0]
  end
  def test_row_6_finds_squares_that_contain_it
    row_six = Row.new(6)
    row_squares = row_six.find_squares_that_contain_row
    assert_equal 3, row_squares.size
    assert_equal row_six.my_board.squares[2][0], row_squares[0]
  end

  def test_row_0_finds_spots_that_contain_it
    row_zero = Row.new(0)
    row_squares = row_zero.find_squares_that_contain_row
    row_spots = row_zero.find_spots_that_contain_row(row_squares)
    assert_equal 9, row_spots.size
    assert_equal row_zero.my_board.squares[0][0].spots[0][0],
                                                row_spots[0]
  end
  def test_row_6_finds_spots_that_contain_it
    row_six = Row.new(6)
    row_squares = row_six.find_squares_that_contain_row
    row_spots = row_six.find_spots_that_contain_row(row_squares)
    assert_equal 9, row_spots.size
    #binding.pry
    assert_equal row_six.my_board.squares[2][0].spots[0][0],
                                                row_spots[0]
  end
end

class FileTest < Minitest::Test
