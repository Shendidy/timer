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