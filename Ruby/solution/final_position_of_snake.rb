# @param {Integer} n
# @param {String[]} commands
# @return {Integer}
def final_position_of_snake(n, commands)
  pos = 0
  commands.each do |cmd|
    case cmd
    when "LEFT"
      pos -= 1
    when "RIGHT"
      pos += 1
    when "DOWN"
      pos += n
    when "UP"
      pos -= n
    end
  end
  pos
end
