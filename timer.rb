# To use this class, require it into your project, then create a new object of this class
# to get the duration your code took to run, just pass your code as a yield into your new object's duration method.
# ****************
# ex: you want to measure the duration of iterating from 0 to 1000000
# timer = Timer.new
# iteration_timer = timer.duration { 
#   i = 0
#   while i < 1000000
#     i += 1
#   end
#  }
# now iteration_timer = some seconds

class Timer
  def duration
    start_time = Time.now
    # puts "starting time: #{start_time}"
    yield
    end_time = Time.now
    # puts "End time: #{end_time}"
    duration = end_time - start_time
  end
end