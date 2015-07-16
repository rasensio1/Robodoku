class Column
  attr_accessor :column_spots, :index, :column_squares, :my_board, :column  # => nil, nil

  def initialize(col_index, board)
    @index = col_index
    @my_board = board
    @column_spots = []
    @column_squares = []
    @column = self
    self.find_squares_that_contain_column
    self.find_spots_that_contain_column(@column_squares)
  end

  def find_squares_that_contain_column
    3.times do |row|
      3.times do |column|
        if column == @index/3
          @column_squares << (@my_board).squares[row][column]
        end
      end
    end
  end

  def find_spots_that_contain_column(column_squares)
    column_squares.each do |square|
      3.times do |row|
        3.times do |column|
          if column == @index % 3
            @column_spots << square.spots[row][column]
            square.spots[row][column].column = @column
          end
        end
      end
    end
  end
end


#test = Column.new(0)                                       # => #<Column:0x007f89ca8c1350 @index=0, @column_spots=[]>, #<Column:0x007f89ca88a530 @index=0, @column_spots=[]>
#array_of_squares = test.find_squares_that_contain_column  # => [#<Square:0x007f89cb10bf88 @spots=[[#<Spot:0x007f89cb10bf10 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007f89cb10be98 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007f89cb10be20 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>], [#<Spot:0x007f89cb10bd80 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007f89cb10bd08 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007f89cb10bc90 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>], [#<Spot:0x007f89cb10bbf0 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007f89cb10bb78 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007f89cb10bb00 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>]]>, #<Square:0x007f89cb113288 @spots=[[#<Spot:0x007f89cb113210 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007f89...
#array_of_squares.size                                      # => 3, 3
