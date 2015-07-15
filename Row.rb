class Row
  attr_accessor :row_spots, :index, :row_squares, :my_board  # => nil, nil

  def initialize(row_index, board)
    @index = row_index
    @row_spots = []
    @my_board = board
    @row_squares = []
    @row = self
    self.find_squares_that_contain_row
    self.find_spots_that_contain_row(@row_squares)
  end

  def find_squares_that_contain_row
    row_squares = []
    3.times do |row|
      3.times do |column|
        if row == @index/3
          @row_squares << (@my_board).squares[row][column]
        end
      end
    end
  end

  def find_spots_that_contain_row(row_squares)
    row_squares.each do |square|
      3.times do |row|
        3.times do |column|
          if row == @index % 3
            @row_spots << square.spots[row][column]
            square.spots[row][column].row = @row
          end
        end
      end
    end
  end


end
