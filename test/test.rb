require '../timer'
require '../lib/reverse'

class Test

  def run
    timer = Timer.new

    duration_vs_arr_length = []
    test_arr = []

    i = 5000
    while i <= 300000
      # populate/add elements to the array that shall be tested
      5000.times{test_arr << ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"].sample}

      # do the test 100 times and get the average
      test_loops = 0
      durations = []
      while test_loops < 100
        duration_of_getting_first = timer.duration{
          reverse_swap(test_arr)
        }
        durations << duration_of_getting_first
        test_loops += 1
      end
      duration_of_this_case = average(durations)
      duration_vs_arr_length << [i, duration_of_this_case]
      i += 5000
    end
    duration_vs_arr_length.map do |test_case|
      print test_case
      puts
    end
  end

  def average(arr)
    return arr.inject(:+)/arr.length.to_f
  end
end

test = Test.new
test.run