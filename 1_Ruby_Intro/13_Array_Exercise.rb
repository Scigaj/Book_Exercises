#Ex 1
arra = [1, 3, 5, 7, 9, 11]

puts arra.include?(3)

puts arra.index(3)

#Ex 3
arr = [["test", "hello", "world"], ["example", "mem"]]
p arr.last.first
p arr[1][0]
p arr.flatten!.select { |m| p m = "example" if m == "example" }

#Ex 6
names = ["bob", "joe", "susan", "margaret"]
names[names.index("margaret")] = "jody"
puts names

#Ex 7
arra.each_with_index { |x, y| puts "#{y}: #{x}" }

#Ex 8

new_arra = arra.map { |x| x + 2 }

p arra
p new_arra
