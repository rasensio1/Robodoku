require './spot'

class Square
  attr_reader :spots                  # => nil
  def initialize
    @square = self
    @spots = Array.new(3)               # => [nil, nil, nil]
    3.times do |row|                    # => 3
      @spots[row] = Array.new(3)        # => [nil, nil, nil], [nil, nil, nil], [nil, nil, nil]
      3.times do |column|               # => 3, 3, 3
        @spots[row][column] = Spot.new(@square)  # => #<Spot:0x007fa2fc25d5b8 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007fa2fc1f6b88 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007fa2fc17c310 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007fa2fb0cfee0 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007fa2fc06a8f0 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007fa2fc2c5208 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007fa2fc225168 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007fa2fc1a42c0 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>, #<Spot:0x007fa2fb0c7bf0 @value=[], @possibille_values=[1, 2, 3, 4, 5, 6, 7, 8, 9]>
      end                   # => 3, 3, 3
    end                                 # => 3
  end
end
