require_relative 'tsp_solver'

def read_matrix_from_file(file_path)
  contents = File.read(file_path).split
  n = contents.shift.to_i
  values = contents.map(&:to_i)

  matrix = Array.new(n) { Array.new(n) }
  n.times do |i|
    n.times do |j|
      matrix[i][j] = values[i * n + j]
    end
  end

  matrix
end

if ARGV.length != 1
  puts "Usage: ruby main.rb <filename>"
  exit 1
end

filename = ARGV[0]
path = File.join("tests", filename)

unless File.exist?(path)
  puts "File '#{path}' not found."
  exit 1
end

begin
  matrix = read_matrix_from_file(path)
  cost, tour = solve_tsp(matrix)
  puts "Cost: #{cost}"
  puts "Tour: #{tour.join(' ')}"
rescue => e
  puts "Error: #{e.message}"
end
