my_array = [1, "Bob", 4.33, "another string"]

puts my_array.pop
puts my_array[1]
puts my_array.pop
puts "\n"
puts my_array
puts "\n"
puts my_array << "Jelcz"
puts "\n"
puts my_array
puts "\n"

puts my_array.collect { |n| n.to_s + "_koniowi" }

arr = []

my_array.map do |m|
  if m.class == String
    m = m + "_koniowi_melduj"
  else
    m = m + 1000
    m.to_s
  end
  arr << m
end

puts arr

my_array = arr

puts "\n"

puts arr.delete_at(1)
puts "\n"
puts arr

puts "\n"
puts arr.delete(1001)
puts "\n"
puts arr
puts "\n"

teams = [["Joe", "Steve"], ["Frank", "Molly"], ["Dan", "Sara"]]
puts teams[1]
puts teams[0][-1]
