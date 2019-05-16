class Timer
  def duration
    start_time = Time.now
    # puts "starting time: #{start_time}" 
    yield
    end_time = Time.now
    # puts "Ending time: #{end_time}"
    duration = end_time - start_time
  end
end

# timer = Timer.new
# puts timer.duration{
#   i = 0
#   while i < 10000000
#     i
#     i+= 1
#   end
# }