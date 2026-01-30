# @param {Integer} turned_on
# @return {String[]}
def read_binary_watch(turned_on)
  result = []
  (0..11).each do |hour|
    (0..59).each do |minute|
      if (hour.to_s(2) + minute.to_s(2)).count("1") == turned_on
        result << format("%d:%02d", hour, minute)
      end
    end
  end
  result
end
