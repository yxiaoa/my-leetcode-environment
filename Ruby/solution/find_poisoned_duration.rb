# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}
def find_poisoned_duration(time_series, duration)
  time_series.each_cons(2).reduce(duration) do |total, (prev, curr)|
    total + [duration, curr - prev].min
  end
end
