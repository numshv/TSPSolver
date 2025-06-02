def solve_tsp(matrix)
  n = matrix.size
  return [matrix[0][0], [0, 0]] if n == 1

  inf = Float::INFINITY
  size = 1 << n
  dp = Array.new(size) { Array.new(n, inf) }
  parent = Array.new(size) { Array.new(n, nil) }

  dp[1][0] = 0

  (0...size).each do |mask|
    next if mask & 1 == 0
    (0...n).each do |j|
      next if j == 0 || (mask & (1 << j)) == 0
      prev_mask = mask ^ (1 << j)
      (0...n).each do |i|
        next if (prev_mask & (1 << i)) == 0
        new_cost = dp[prev_mask][i] + matrix[i][j]
        if new_cost < dp[mask][j]
          dp[mask][j] = new_cost
          parent[mask][j] = i
        end
      end
    end
  end

  full_mask = size - 1
  best_cost = inf
  last = 0

  (1...n).each do |j|
    cost = dp[full_mask][j] + matrix[j][0]
    if cost < best_cost
      best_cost = cost
      last = j
    end
  end

  # Reconstruct path
  path = []
  mask = full_mask
  curr = last
  path << curr
  while curr != 0
    prev = parent[mask][curr]
    mask ^= (1 << curr)
    curr = prev
    path << curr
  end
  path.reverse!
  path << 0

  [best_cost, path]
end
