# @param {Integer[][]} grid
# @return {Integer}
def surface_area(grid)
  area = 0
  rows = grid.size
  cols = grid[0].size

  (0...rows).each do |i|
    (0...cols).each do |j|
      height = grid[i][j]
      next if height == 0

      # Top and bottom faces
      area += 2

      # Front face
      area += height if i == 0
      area += [height - grid[i - 1][j], 0].max if i > 0

      # Back face
      area += height if i == rows - 1
      area += [height - grid[i + 1][j], 0].max if i < rows - 1

      # Left face
      area += height if j == 0
      area += [height - grid[i][j - 1], 0].max if j > 0

      # Right face
      area += height if j == cols - 1
      area += [height - grid[i][j + 1], 0].max if j < cols - 1
    end
  end

  area
end
