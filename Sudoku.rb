require 'pry'  # => true
require './board'
require './spot'
require './square'
require './column'
require './row'
require './solver'

Solver.new(ARGV[0])
