require 'pry'  # => true
require './board'
require './spot'
require './square'
require './column'
require './row'
require './solver'

Solver.new(ARGV[0])


# >>
# >> [1mFrom:[0m /Users/ryan/Turing/homework/Robodoku/doku.rb @ line 19 Square#initialize:
# >>
# >>     [1;34m13[0m: [32mdef[0m [1;34minitialize[0m
# >>     [1;34m14[0m:   [1;32m$SiB[0m.record_result([1;34m14[0m, (@spots = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m15[0m:   [1;32m$SiB[0m.record_result([1;34m21[0m, ([1;32m$SiB[0m.record_result([1;34m15[0m, ([1;34m3[0m)).times [32mdo[0m |row|
# >>     [1;34m16[0m:     [1;32m$SiB[0m.record_result([1;34m16[0m, (@spots[row] = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m17[0m:     [1;32m$SiB[0m.record_result([1;34m20[0m, ([1;32m$SiB[0m.record_result([1;34m17[0m, ([1;34m3[0m)).times [32mdo[0m |column|
# >>     [1;34m18[0m:       [1;32m$SiB[0m.record_result([1;34m18[0m, (@spots[row][column] = [1;34;4mSpot[0m.new))
# >>  => [1;34m19[0m:       [1;32m$SiB[0m.record_result([1;34m19[0m, (binding.pry))
# >>     [1;34m20[0m:     [32mend[0m))
# >>     [1;34m21[0m:   [32mend[0m))
# >>     [1;34m22[0m: [32mend[0m
# >>
# >> [0G[?1034h[1] pry(#<Square>)>
# >> [1mFrom:[0m /Users/ryan/Turing/homework/Robodoku/doku.rb @ line 19 Square#initialize:
# >>
# >>     [1;34m13[0m: [32mdef[0m [1;34minitialize[0m
# >>     [1;34m14[0m:   [1;32m$SiB[0m.record_result([1;34m14[0m, (@spots = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m15[0m:   [1;32m$SiB[0m.record_result([1;34m21[0m, ([1;32m$SiB[0m.record_result([1;34m15[0m, ([1;34m3[0m)).times [32mdo[0m |row|
# >>     [1;34m16[0m:     [1;32m$SiB[0m.record_result([1;34m16[0m, (@spots[row] = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m17[0m:     [1;32m$SiB[0m.record_result([1;34m20[0m, ([1;32m$SiB[0m.record_result([1;34m17[0m, ([1;34m3[0m)).times [32mdo[0m |column|
# >>     [1;34m18[0m:       [1;32m$SiB[0m.record_result([1;34m18[0m, (@spots[row][column] = [1;34;4mSpot[0m.new))
# >>  => [1;34m19[0m:       [1;32m$SiB[0m.record_result([1;34m19[0m, (binding.pry))
# >>     [1;34m20[0m:     [32mend[0m))
# >>     [1;34m21[0m:   [32mend[0m))
# >>     [1;34m22[0m: [32mend[0m
# >>
# >> [0G[1] pry(#<Square>)>
# >> [1mFrom:[0m /Users/ryan/Turing/homework/Robodoku/doku.rb @ line 19 Square#initialize:
# >>
# >>     [1;34m13[0m: [32mdef[0m [1;34minitialize[0m
# >>     [1;34m14[0m:   [1;32m$SiB[0m.record_result([1;34m14[0m, (@spots = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m15[0m:   [1;32m$SiB[0m.record_result([1;34m21[0m, ([1;32m$SiB[0m.record_result([1;34m15[0m, ([1;34m3[0m)).times [32mdo[0m |row|
# >>     [1;34m16[0m:     [1;32m$SiB[0m.record_result([1;34m16[0m, (@spots[row] = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m17[0m:     [1;32m$SiB[0m.record_result([1;34m20[0m, ([1;32m$SiB[0m.record_result([1;34m17[0m, ([1;34m3[0m)).times [32mdo[0m |column|
# >>     [1;34m18[0m:       [1;32m$SiB[0m.record_result([1;34m18[0m, (@spots[row][column] = [1;34;4mSpot[0m.new))
# >>  => [1;34m19[0m:       [1;32m$SiB[0m.record_result([1;34m19[0m, (binding.pry))
# >>     [1;34m20[0m:     [32mend[0m))
# >>     [1;34m21[0m:   [32mend[0m))
# >>     [1;34m22[0m: [32mend[0m
# >>
# >> [0G[1] pry(#<Square>)>
# >> [1mFrom:[0m /Users/ryan/Turing/homework/Robodoku/doku.rb @ line 19 Square#initialize:
# >>
# >>     [1;34m13[0m: [32mdef[0m [1;34minitialize[0m
# >>     [1;34m14[0m:   [1;32m$SiB[0m.record_result([1;34m14[0m, (@spots = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m15[0m:   [1;32m$SiB[0m.record_result([1;34m21[0m, ([1;32m$SiB[0m.record_result([1;34m15[0m, ([1;34m3[0m)).times [32mdo[0m |row|
# >>     [1;34m16[0m:     [1;32m$SiB[0m.record_result([1;34m16[0m, (@spots[row] = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m17[0m:     [1;32m$SiB[0m.record_result([1;34m20[0m, ([1;32m$SiB[0m.record_result([1;34m17[0m, ([1;34m3[0m)).times [32mdo[0m |column|
# >>     [1;34m18[0m:       [1;32m$SiB[0m.record_result([1;34m18[0m, (@spots[row][column] = [1;34;4mSpot[0m.new))
# >>  => [1;34m19[0m:       [1;32m$SiB[0m.record_result([1;34m19[0m, (binding.pry))
# >>     [1;34m20[0m:     [32mend[0m))
# >>     [1;34m21[0m:   [32mend[0m))
# >>     [1;34m22[0m: [32mend[0m
# >>
# >> [0G[1] pry(#<Square>)>
# >> [1mFrom:[0m /Users/ryan/Turing/homework/Robodoku/doku.rb @ line 19 Square#initialize:
# >>
# >>     [1;34m13[0m: [32mdef[0m [1;34minitialize[0m
# >>     [1;34m14[0m:   [1;32m$SiB[0m.record_result([1;34m14[0m, (@spots = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m15[0m:   [1;32m$SiB[0m.record_result([1;34m21[0m, ([1;32m$SiB[0m.record_result([1;34m15[0m, ([1;34m3[0m)).times [32mdo[0m |row|
# >>     [1;34m16[0m:     [1;32m$SiB[0m.record_result([1;34m16[0m, (@spots[row] = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m17[0m:     [1;32m$SiB[0m.record_result([1;34m20[0m, ([1;32m$SiB[0m.record_result([1;34m17[0m, ([1;34m3[0m)).times [32mdo[0m |column|
# >>     [1;34m18[0m:       [1;32m$SiB[0m.record_result([1;34m18[0m, (@spots[row][column] = [1;34;4mSpot[0m.new))
# >>  => [1;34m19[0m:       [1;32m$SiB[0m.record_result([1;34m19[0m, (binding.pry))
# >>     [1;34m20[0m:     [32mend[0m))
# >>     [1;34m21[0m:   [32mend[0m))
# >>     [1;34m22[0m: [32mend[0m
# >>
# >> [0G[1] pry(#<Square>)>
# >> [1mFrom:[0m /Users/ryan/Turing/homework/Robodoku/doku.rb @ line 19 Square#initialize:
# >>
# >>     [1;34m13[0m: [32mdef[0m [1;34minitialize[0m
# >>     [1;34m14[0m:   [1;32m$SiB[0m.record_result([1;34m14[0m, (@spots = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m15[0m:   [1;32m$SiB[0m.record_result([1;34m21[0m, ([1;32m$SiB[0m.record_result([1;34m15[0m, ([1;34m3[0m)).times [32mdo[0m |row|
# >>     [1;34m16[0m:     [1;32m$SiB[0m.record_result([1;34m16[0m, (@spots[row] = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m17[0m:     [1;32m$SiB[0m.record_result([1;34m20[0m, ([1;32m$SiB[0m.record_result([1;34m17[0m, ([1;34m3[0m)).times [32mdo[0m |column|
# >>     [1;34m18[0m:       [1;32m$SiB[0m.record_result([1;34m18[0m, (@spots[row][column] = [1;34;4mSpot[0m.new))
# >>  => [1;34m19[0m:       [1;32m$SiB[0m.record_result([1;34m19[0m, (binding.pry))
# >>     [1;34m20[0m:     [32mend[0m))
# >>     [1;34m21[0m:   [32mend[0m))
# >>     [1;34m22[0m: [32mend[0m
# >>
# >> [0G[1] pry(#<Square>)>
# >> [1mFrom:[0m /Users/ryan/Turing/homework/Robodoku/doku.rb @ line 19 Square#initialize:
# >>
# >>     [1;34m13[0m: [32mdef[0m [1;34minitialize[0m
# >>     [1;34m14[0m:   [1;32m$SiB[0m.record_result([1;34m14[0m, (@spots = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m15[0m:   [1;32m$SiB[0m.record_result([1;34m21[0m, ([1;32m$SiB[0m.record_result([1;34m15[0m, ([1;34m3[0m)).times [32mdo[0m |row|
# >>     [1;34m16[0m:     [1;32m$SiB[0m.record_result([1;34m16[0m, (@spots[row] = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m17[0m:     [1;32m$SiB[0m.record_result([1;34m20[0m, ([1;32m$SiB[0m.record_result([1;34m17[0m, ([1;34m3[0m)).times [32mdo[0m |column|
# >>     [1;34m18[0m:       [1;32m$SiB[0m.record_result([1;34m18[0m, (@spots[row][column] = [1;34;4mSpot[0m.new))
# >>  => [1;34m19[0m:       [1;32m$SiB[0m.record_result([1;34m19[0m, (binding.pry))
# >>     [1;34m20[0m:     [32mend[0m))
# >>     [1;34m21[0m:   [32mend[0m))
# >>     [1;34m22[0m: [32mend[0m
# >>
# >> [0G[1] pry(#<Square>)>
# >> [1mFrom:[0m /Users/ryan/Turing/homework/Robodoku/doku.rb @ line 19 Square#initialize:
# >>
# >>     [1;34m13[0m: [32mdef[0m [1;34minitialize[0m
# >>     [1;34m14[0m:   [1;32m$SiB[0m.record_result([1;34m14[0m, (@spots = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m15[0m:   [1;32m$SiB[0m.record_result([1;34m21[0m, ([1;32m$SiB[0m.record_result([1;34m15[0m, ([1;34m3[0m)).times [32mdo[0m |row|
# >>     [1;34m16[0m:     [1;32m$SiB[0m.record_result([1;34m16[0m, (@spots[row] = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m17[0m:     [1;32m$SiB[0m.record_result([1;34m20[0m, ([1;32m$SiB[0m.record_result([1;34m17[0m, ([1;34m3[0m)).times [32mdo[0m |column|
# >>     [1;34m18[0m:       [1;32m$SiB[0m.record_result([1;34m18[0m, (@spots[row][column] = [1;34;4mSpot[0m.new))
# >>  => [1;34m19[0m:       [1;32m$SiB[0m.record_result([1;34m19[0m, (binding.pry))
# >>     [1;34m20[0m:     [32mend[0m))
# >>     [1;34m21[0m:   [32mend[0m))
# >>     [1;34m22[0m: [32mend[0m
# >>
# >> [0G[1] pry(#<Square>)>
# >> [1mFrom:[0m /Users/ryan/Turing/homework/Robodoku/doku.rb @ line 19 Square#initialize:
# >>
# >>     [1;34m13[0m: [32mdef[0m [1;34minitialize[0m
# >>     [1;34m14[0m:   [1;32m$SiB[0m.record_result([1;34m14[0m, (@spots = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m15[0m:   [1;32m$SiB[0m.record_result([1;34m21[0m, ([1;32m$SiB[0m.record_result([1;34m15[0m, ([1;34m3[0m)).times [32mdo[0m |row|
# >>     [1;34m16[0m:     [1;32m$SiB[0m.record_result([1;34m16[0m, (@spots[row] = [1;34;4mArray[0m.new([1;34m3[0m)))
# >>     [1;34m17[0m:     [1;32m$SiB[0m.record_result([1;34m20[0m, ([1;32m$SiB[0m.record_result([1;34m17[0m, ([1;34m3[0m)).times [32mdo[0m |column|
# >>     [1;34m18[0m:       [1;32m$SiB[0m.record_result([1;34m18[0m, (@spots[row][column] = [1;34;4mSpot[0m.new))
# >>  => [1;34m19[0m:       [1;32m$SiB[0m.record_result([1;34m19[0m, (binding.pry))
# >>     [1;34m20[0m:     [32mend[0m))
# >>     [1;34m21[0m:   [32mend[0m))
# >>     [1;34m22[0m: [32mend[0m
# >>
# >> [0G[1] pry(#<Square>)>
