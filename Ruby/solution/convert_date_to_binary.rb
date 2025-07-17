# @param {String} date
# @return {String}
def convert_date_to_binary(date)
  year, month, day = date.split("-").map(&:to_i)
  "#{year.to_s(2)}-#{month.to_s(2)}-#{day.to_s(2)}"
end
